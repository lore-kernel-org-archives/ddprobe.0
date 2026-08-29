Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 577811EE7C6
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787964034; cv=none; b=JtLgrIsQl/H9VTjj2OxNsrvNfLfIBNzNz2Q4/5fBJYn+tqwEuDAF2StSSpSbrmbd3FpnlL/6MUABu13pvMyKBK0e2MWCniIihLkh/bFkZk2ON+MKIDljTa/Upoe4qTvIMPa8RQh/ai+z4i2mhfuStlgBY105EBKElfj1yW52Xq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787964034; c=relaxed/simple;
	bh=XyjnQOY8P7cq7IUC9YA7UeaOtBHX5j5Jsv9jyr7JqYA=;
	h=To:Subject:From:Message-Id:Date; b=HbikR8zmyUUJ7RSckU764aZU59kargPinXFQCOi/+WNYyt1TbcXj1v9431AVlAdcSxlGu8MB/EQSL4Thk1n9/36YwpLRIufMi7KVXMTDyYwZjZJflvI4Fd01/NjzhJLPKZPM/m5Ctlm8qcPQgpOa7ERdRJPIR9sW3PXudCCU91k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N4xSSiSW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N4xSSiSW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D48C6C19425
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787964033;
	bh=XyjnQOY8P7cq7IUC9YA7UeaOtBHX5j5Jsv9jyr7JqYA=;
	h=To:Subject:From:Date:From;
	b=N4xSSiSWnLFl+eVFHnG4cfwVy127ZzzjeVCyKMGKbF4uMZSSSlYyHvgmXbzSuAM+i
	 jSGmQEl7TxCJhQwjs+IqGPsdOVs07L/S09DHGKv2IfA4uskt/CQDYHvx9hhZarI/jr
	 JvnoFusAbaD0JV3qWkjSNLDWHVfydxxw2SDbjPjMdO7j5js6lShPHFqRSi+7JrQksV
	 s0UDFT4HJkHcCn0NZ+Hd0732d51/0GJNGtMK+Lp02PAxhLEE4puLfuQx9tC8OUTshT
	 uIEnj0HK2dbt/dADHW+N0+cRHXr+45b58gHHLBOyaJUw3lk+gXlr0dUh8Va3ul+NIC
	 wcyGw0xrf+NiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE93DC61DBD
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178796403369.24652.18184159273329235621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 378c0a7b21a2cbdbc51e9f7c307763cd65a52f4175c443b8bc384cd92bb51b8e
Date: Sat, 29 Aug 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787964033
