Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D2023EDE57
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 15:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780415074; cv=none; b=i76BzJB+tp3UckmBbSBViN/yj+YP/7yXIBz5HAVfmZ/KerAjy75Zzm+a/SceIiWOLujG78BH0T/47eJqvKEcVMEMz7Y8qX02N7qpx/QEsLjUgHZ1ILNRA+raIDKd2eafrRUmHICg2doUvkEH6V6lNrbS+QRJJW+qcHQbMCbWHmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780415074; c=relaxed/simple;
	bh=BifCojWDTB50ebksKhEBCVj9nU0eTlKi1prTmk9LE/Q=;
	h=To:Subject:From:Message-Id:Date; b=UjOx4Q5AoA2A6u1B+Dhmlh64cOnGU2MhFf5RGla+1sN4bci1DXcqspbIUoDjEWEMAYAB1jMSR+8VCrUaD/2pIJs0ghEtNB19RFA936v5sx8gdbyDiWjvoUtCO85yF3ucyD+5wolVWUV9oAfz2mZxD63itPhkAHyWgbNFTsbovfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GOoeOo37; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GOoeOo37"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA149C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 15:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780415073;
	bh=BifCojWDTB50ebksKhEBCVj9nU0eTlKi1prTmk9LE/Q=;
	h=To:Subject:From:Date:From;
	b=GOoeOo37I2MQs9hrDW2TNc7fcHCVIgYQAr3bD1Yby9WVcmScD89q/J6XwlUTQRd0o
	 7rtggQ7IKhU54DYgtn/VvI1PcFbzPN/ECDF9ftanKASsJ6D2o1TW75tu7SAi6SXWsP
	 l74XruKoepeLkhUoESZjUzb0+wo62I5CHqlO5b53sT45y0REwQLQK8jXMRAUJ4aVhs
	 MGajhCGLKqVaiu7upErvkCxP3xPI6bzRGpoJoB+I5+ggJn99QSmKy5zDOBJ1zwrNyb
	 wTT2E9ufp6D6xu+c4meOy2+f45tQLeRgq6m/i7EdzqvxPrWQDYyZ0sbuNidYifJm+5
	 L6/JuDJqIT+Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4FBCD6E60
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 15:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178041507369.22392.9669653821777670548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fd2f705235c318ec0d23e9e3872b7107937e30db9a20be7e991ecd4f42c873c
Date: Tue, 02 Jun 2026 15:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780415073
