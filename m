Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F7A51A841B
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748030394; cv=none; b=VZxKjs5EYxBfoPK0vce3pMugoWleNlAjjtcz67T6OdJF9Rt/kGVRo7RRKoDUB5xr0XAlQqqtCFGSMlXXj/loWpNCDSp/x+OvPU+fIUcl9Iy/H0GKrew1pzm9ERS6ELcUEmLyKKWxmA1ixpoh2+iupX7jZgJ5sHsF0VfeDwKr1pU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748030394; c=relaxed/simple;
	bh=7+mezddQ24TZ3NYxyfsL1LZMk/9NAIYh1C2xiM1Qwlk=;
	h=To:Subject:From:Message-Id:Date; b=qQ5WfGoMGN0Aagicl03oqUt3NbqJopGYVIxbiAu0IixWe7mQ+y0nYebjoDEW+aLU1Pn1GzGIpqI/X9e1eUBJQb7SEZyO8qWGQGUCvfUpTlDpQGFbsGNzgJPhnz+EDbFk8+x/LTqWuczAB9WEreukhe7XYtR4N7fxFvGlOzQVFtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k67IpB13; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k67IpB13"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6F9C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748030393;
	bh=7+mezddQ24TZ3NYxyfsL1LZMk/9NAIYh1C2xiM1Qwlk=;
	h=To:Subject:From:Date:From;
	b=k67IpB13xQGIWYgTDOi4U6hB0Pr8gLyxcWnbbJij58BJVw9YRTGL+iySmtPtPbrnY
	 UU/fH0X50TUYte6fbKp2FPz0cJpPKsf2SD020MMD051tOdQt2h+ZExoKhogDnwxePH
	 iEgLCcTpCGKme5VIcG4RKPN3UFk3TAlTXMA3gE48k/NNXeQP13OHkNxxNKTLG46f+h
	 9fR33fPJDrcZps4kx66vk28fxddz2deLCoyP2tRnUx9dsednTiMVwA9DwgYO6RyYyN
	 f1HSDa4vymCShhLDq4CPfv6iIi4tw6cW+J+27NEMfhWSi9yYtMmxMlCryPJbrAGqDU
	 CNkUc1djLmizg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E376C54ED1
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174803039357.453.6912136100268059683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acc26d8d9a4507ffa2d4ea166ccc81c15df2daad6f643c5c7f3122b79615e78a
Date: Fri, 23 May 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748030393
