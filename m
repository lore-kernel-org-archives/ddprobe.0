Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67EED1E88D
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 23:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714863743; cv=none; b=CUcSNPhB85Z9YFxLwExBa7uqXXAUMfmLyzexKXH5Ba7M/neunVA/H40Zd5M2AgmH8/ir/AK2Jwmd/YhlNqsCMeYkBjLfExbtUaHdYvfIPAlLiBj129AtPfiiQpaQhf5PKol3lZ1Eeak36MfdusYNluaFvuh58U8a5c3C5HaZb/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714863743; c=relaxed/simple;
	bh=l07IdSf/jWFrFLMbEOG0rZuTf0s6X43Vbl0CamQJm30=;
	h=To:Subject:From:Message-Id:Date; b=Xo6lwo9UEo/3EWCyU/FvkPNdQ0MSjBdyxlCnlMK1LWX7QfNTjx4xegtWuXjKBk6XQX5waDUgYsl0j3xG6KkwY6Gh4gVQSoFqcPFlLm+TauMzQ0yCX1aqsdhJdHdmjWTORr8e0DJKrcEUqz+e6HJ9akHaKzdWTQWhy1DIhwiOxYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DwVgzniB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DwVgzniB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6E20C2BBFC
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 23:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714863742;
	bh=l07IdSf/jWFrFLMbEOG0rZuTf0s6X43Vbl0CamQJm30=;
	h=To:Subject:From:Date:From;
	b=DwVgzniBjpU28RUnpHyFc7N6xjrwIIlC/fz7mDCg2VgInpOl2a8nZGI7hdrsKoOAg
	 4eF1aKJRYPKYyh9+dbuhL0axpFvsHG4wzZUxzKSzTNW63Y8JKvFIHoGtHA57LoAXFV
	 0PBq4XAaK9MgJEFrS2mX0tk1IKKQBoVluFrBdc2r2lAwYYMlj/UliXZ9tn7ZXiNqsD
	 Zyfju5zhs++yX39Yf6JBSxihgJL51GKI2sddw5fziNe4xLno/I5q4Vt/am0Ph5JvD9
	 XmdrQ2CALB0FNwAUpPlFgIfAKKFgG50BmzFSf14Oo5P6UotsA4UtFCyVXZXeVIMrBU
	 XsKgO1ULbsQPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1B1EC10F1A
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 23:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171486374277.15339.14902774482971770649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3997ff7b8c6b44ee28a28abde9e45602cdffc954177d02920c538abadfb787c
Date: Sat, 04 May 2024 23:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714863742
