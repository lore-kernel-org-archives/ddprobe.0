Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 400DF2FF147
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 02:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773972894; cv=none; b=PQXCpPM2xMYPzNNTzomzwTZWNlR9aoCllrrbmHbfb6HSt2AAR7ON9yOsqd0SObHeVyQaBqDxHan+EAMAdIB1UMYabq2dlTbgkpR25z+k8v2G7SfJj42eWaUn8tmQMyjH85hbVaiGrVxN7CJHdFaHc9S0ZiWpcXuX44m5Tuh+6Yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773972894; c=relaxed/simple;
	bh=hKQEleB9Y+tkvT3c+0wzDkVOTRGbVYowO0zr+fAQreA=;
	h=To:Subject:From:Message-Id:Date; b=NFnc/2a7x2zsekR1ZHsVlpy2JAmP7WjbUHjXHDw93xTMDrIgrnbVCr9aOP1VnFQtzAm7//J1XOfrmuzmuEUHQSX06O8uvrkhlUYRNfGUx/66cxtEgKlj5fCsjakZIhVOWFydZMlLA+ZaX0lpWGFBK41Q6wystEBi997/CfjcAak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hsvWHoU0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hsvWHoU0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38B7C19424
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 02:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773972893;
	bh=hKQEleB9Y+tkvT3c+0wzDkVOTRGbVYowO0zr+fAQreA=;
	h=To:Subject:From:Date:From;
	b=hsvWHoU0FNXtwjw/6W3Fy5eOV4GHs3eURynvW+hwuhlcYuXnHOhYDbxIDy2NJ0iJ4
	 lRuTua3V+s/H+F/0gd8VDtfmzEYURlVtB06apg8D9BW+AgV4Yf+g4FVEAC7LfT4dxv
	 EtG3bUJDhjtjpB9hbvDxiPhLjP2c6M3rla+gQiu//Rpevmy9KPTmNNovQDCVNrWCH6
	 1E8pq12QNHhIyoEqnjIqTtz+9wd2L2UquSWo3Pd3f2ju3JnxujmOS/QMeJQ0oVAbQs
	 bbTheJm4YtRuTrFmv/oANc9a8HvUYJtQLtm78Fv36ZQeDh7z6Ye/WJrzkriitcFsu+
	 VvYSRORfvSRqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946851093163
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 02:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177397289357.20113.5582863534702568881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e917925c1cac29bc2b64b75ccff620e4b0516949e5d41ec4afd2d49cc7d9f0d
Date: Fri, 20 Mar 2026 02:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773972893
