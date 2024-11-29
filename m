Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 246093224
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732907154; cv=none; b=EzZ/ozA4V8Bl9Hah6GxSHDWClIHv0BNNP1pmKmCkvvff7M1M1+b8pQE5bMaakJ0bF6c1nah2tmGbmpRhCezrGlM8o2Uf44a40FXdlKupieDONkMeHq7jfHXedPjFYYp07MgAE06UoriE392y5uwnrfK+W85GYegX2f51DcgT04A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732907154; c=relaxed/simple;
	bh=VFDgJ537H3bt04cGSqjk9eBOsXkHJVtiOG9Rc9SgA/U=;
	h=To:Subject:From:Message-Id:Date; b=Ght8VCqsAqNgXU9YwR86AW/GXx8nkqLBYWsC/rtwbHy/x3aWang0aBEwpLPzlzUsdv74C25q/aPIJ+P0BUMihXo79/TKUGYtZz5zt6lFRRJxb5uRr59gA57DnpUJmd3q+PUlfpem1VqTCLeiZVfLcjX6/MSAT2FUmXUINQU7Iks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kmbb5/su; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kmbb5/su"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D4EC4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732907153;
	bh=VFDgJ537H3bt04cGSqjk9eBOsXkHJVtiOG9Rc9SgA/U=;
	h=To:Subject:From:Date:From;
	b=kmbb5/suLdy8rbCiCfEwbY1gdiLpZ8/FGft4nHRcDKmkJiLE1uBfpd78GEqGB1he2
	 vLq3IzIoKCd+WKIHoig4+LizH5oA9LLv5wfeniscxag2+yG/IbgS7EVCftANG+JXIQ
	 Elriy3SRdK/5MlK5e1k7FX66nYnRwRKqcXr8W3t0DL8t3O1fQOgSIyNWOimgI2GQSa
	 AESalErSHk4x8mvXJAgKSHK91T5BM3ySD1kdlXOrZC18tPD/isqZJLzmne95RmtARW
	 JQYFpQ/kRypZ7DGwyu3VZoQXPeNHzbKZD1yUYrrTFty/7a2JG3NEfVx5VMQpcNqZI7
	 qk48zOi46Nt8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908F0D729FC
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173290715358.7171.14710072913180577546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fb218b48b03de5609e6f94a0b2e7a2f0389343c48db4b6d8618ee310478daf6
Date: Fri, 29 Nov 2024 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732907153
