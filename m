Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 334E23A1E83
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 07:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765958034; cv=none; b=fv0w1keMgIgfbOSJkAp/dwbvE9wmZ8IESx3Pmx5QYbNxun5VxTAsbn7brvX+cRwF7R+Gfwo4UB2zmZHecUqicg6ZbxGx+ibaeNJz1rHcUqI7C+qkpmAiWQ1EM9zdAE4+YR++b39ux536uRA1IBQrZZWKgn9zb0dkN1U0iWEIaU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765958034; c=relaxed/simple;
	bh=DE/JY50QS9vMyPcdXXKlwUMTOluLBAiugQlQbEaDK5o=;
	h=To:Subject:From:Message-Id:Date; b=ej7hk9aHwU0rodcaCwpJLcxjsN9zlWB2ja2VNQz7kWYe/ydnU/uDR7UIpQHEKRFPtWh99X4Fd25/PyR+tGKTB0obAMz9g5Ddy/JQFZEixuLhefILuBnSxJUfpQs2eCuUnG2QAPD878eBRoulcKj7WqkXjRSPEOy/22YM7u6elEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FRUY2iHr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FRUY2iHr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B08D1C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 07:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765958033;
	bh=DE/JY50QS9vMyPcdXXKlwUMTOluLBAiugQlQbEaDK5o=;
	h=To:Subject:From:Date:From;
	b=FRUY2iHr4VMgCOsBPFOR3L2nTXRJ6xq9QGsOIc2DIwpH6lieURrfIrB9riquX9WMt
	 upGz7z2ttimL4bpet/Tv+5K0BcjbNIcNMgthbJHSHYQQNETmA0iKdis9Qz5IqebDBz
	 eC/Fqp3LrpZObUDoctbFOPuBcF1e4JIs3ACfg3L9WgB9vnhhx8f2mXfQRrpasTy5su
	 wJHIyH1FLxb2329SN4+smciekpgEhgQyeAiITF1/X+hsyVGvcbWh/3XKGT50ImoAV8
	 /lhdRdFMv499SmqhlXxwBIknkPcn/SjOiQlGQOv2iRhYK1FkGM37kQuFvmCahyNasG
	 +nNCEyL6SuKGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CEAED64086
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 07:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176595803363.12018.18391676967560539082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15612a960f7826d39868f2de879e8fcfaaec54441c779259a5a4ad56305ca353
Date: Wed, 17 Dec 2025 07:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765958033
