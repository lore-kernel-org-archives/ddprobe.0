Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 435EF1E9B1C
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758355794; cv=none; b=UqUdK+RL/zkQ2lZsfIwY7RVOTRxtZxtwpVIRj+bt2+cRQ4uRGPqktPl751garX96BupajZ9ewnACPITcI5VCY4EAjoF+wDQ1FGOjfd3ZXxZ7QJPxqZreuwvgZgHafPH7NNq34XCVzTQ4MnF/CfbtlwLwxhaTa49qOOPyF7bvivQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758355794; c=relaxed/simple;
	bh=P8TbTiOwLFQ0vzv/YjLmndQ6V38SK78wjUA3D7b7qvo=;
	h=To:Subject:From:Message-Id:Date; b=opklTTumtHcSwCfq5r1ezqYxcqI9QrX1oAXQvxn6wZDEgjqiRKTn7v8+YIFFfvfDbH67ArMZzChtLzb/3Murpbg6GJ7feHEXV14JkDN1oAkBlpgcgN/wS5DaLpiiPV9UpwR8oKHK5FFMYZKlX+dao6erUyqwFn/pJA8IWIIuE0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G5NBRDC2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G5NBRDC2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DB9C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758355793;
	bh=P8TbTiOwLFQ0vzv/YjLmndQ6V38SK78wjUA3D7b7qvo=;
	h=To:Subject:From:Date:From;
	b=G5NBRDC2qJg1zOk3g893Mlrl2QTKSV51LtdFFhegIR1ifGDbUrIUhk59S2JL1Ixu8
	 PsQQHYNcbrjYgP3HbvKP0Cb1AzLbhn9fxWxoT4m87V9DUX27wqD0ZuMVapkbcx3USW
	 84m4ITvXH5gl07YOqmPt/VMOvNrxF8mPc1+AwYCEHhPamM0ql51hIW4Iiq6gZdoB8Y
	 5qn1YDCdbOIa/M+vtfhMAQ2v4qnWcuH/kmBCenoj5GpwpRd+VqtmrZ4co1jXRZYVPC
	 K8AxScszkDd7+DU15geAxVAso9iTkqWanrzY66y/FGiZYL/kgYM0GjX+DjhaZOPAYl
	 NmfJIAPN0dw3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EE9CAC5A0
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175835579358.18435.8297762653360434762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38889f35b96fe92cd74c4e70cb35a2163d0079bfde98a8d8dd3575d270e7340d
Date: Sat, 20 Sep 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758355793
