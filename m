Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A3CC28EC
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735230954; cv=none; b=fO2F9KPzgDMb1dmnyH0LI6gXyWRS6FSRFlUqkHpiMKeJsB8jGdSAi7oJ5HsfqfEY84gfjUSIao/9GII+4o9qLCJjSOIY1DTNxjaSLYwz9xBgJpDo4OA3DntP6+AtBGvCFl1SxI121Hr7uyWigtKYECuW+51HLAsIEEjSJl0tyfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735230954; c=relaxed/simple;
	bh=fccPiwDFg3FjQ6YJvvpaty2Xj00X2vGp7kshfBjOuqY=;
	h=To:Subject:From:Message-Id:Date; b=Z1/nX727LIDmZ+W+H+d85ibAuhW+wLhWt1WMxaGAuNC6dvV0w4a1JnCs0b6i3G5dGhvSHZIbjAPFZmysNd1j+Yrle0UyiOUCeSFyd8NOla6YAdr0DLgCaRmkYCK8fuoJXqe66fNMdJYjtLz6seVbo3SQK88rYkRe/9zyEDQ8Xsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=peycVwb9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="peycVwb9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B274CC4CED1
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735230953;
	bh=fccPiwDFg3FjQ6YJvvpaty2Xj00X2vGp7kshfBjOuqY=;
	h=To:Subject:From:Date:From;
	b=peycVwb9BqnkPzlCHfUQfZX/ZuEoMSX5VIWOm5NwOSRmNFQdlGB1nkAvKTBoa9nmq
	 Uf2K+aUIm/5xoWVG4NUGmeLnn6yvauMO8CKdboJBaov3NkfFXf70qGiQ1eYXivkdNZ
	 9UaTShtHed9oVqaAlgk30bCMCG5DjtEf+AkgyhHEjQVRS9khB0YOF9XMAbVqSBGTdG
	 6VuvTYRquCwf/hdXQEnl9Nq/8SUQe8hMVQ9Zb1W+2pwyuqWd/KWaHBImVM7gsy/vUP
	 oPe38upTSV0Q8Nzd/VNcCDBQbeauqXBL3cRkqbs33pzmVfLjsa88i8vAozYgJ1aapr
	 zUTlyajys+twQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949F6E77188
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173523095358.9056.12122058470051549228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd640b0636662d73b713bab8835b5152132e0bf4c98a4ebe2a074e42eaf6583e
Date: Thu, 26 Dec 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735230953
