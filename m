Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56D51346E5D
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792317634; cv=none; b=SDVvT1xZSRSaHm04nRSq/34s9llAUmc7Govjn8ZH2vyLHdX2wCq6/XpIURB71+kMIBkkdl//O1GvxvwsqaQC/kRVa5S6lpX03oQA3o3jjUEmY4Lhd7ePP1kyp3fg9LE7oeAAH2bxl5VP9O1FcuX/m/0WbgUlkVJvDqTIh2U6lqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792317634; c=relaxed/simple;
	bh=XS1GQKNRhm191aQuoeenBb4OW25nXV/6nzjBNMkTsIM=;
	h=To:Subject:From:Message-Id:Date; b=giScNIFqwdeQ1ow99dJqgjgtgiZFCSV6jpYWh4Dvi9jgUVQb4P3hfCW5kjQW8yUD7WOEFFUH6YdswJtnVNV84aKfdLi9sGhes3iswrwzG8+WDiBHrbkB7L08TMItqt14cKw9yeYGiJHZDSHV0nsY4NlCPuV/VqGEW0tNUjo2uOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G1nfsAI3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G1nfsAI3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBF2FC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792317633;
	bh=XS1GQKNRhm191aQuoeenBb4OW25nXV/6nzjBNMkTsIM=;
	h=To:Subject:From:Date:From;
	b=G1nfsAI3J2yrJEQunB8yi4jQ/cWULdPBjcBroRas+jWinbEFMYtQrdZ1pkYdTxmbX
	 VZxqxOx6lfs4ZcFevA565YIXDltcX+OINkfoYQWizJnu8+7z60hS8kIq0ihFTJJ3he
	 qvmlKpG3SEvuXKcOOX/MkfC5coLLqRToaBGKbb2FDP9FtbdKTg8/JosIFraX3+1C8r
	 FISjIKvvANBm6H3gaZq+yUcCnBN8tf6dvbmuj/D7QV+PTSEEd6w2uF5les9dEJB7hP
	 v7WStA9NArqDL+r9IPV4GA18uoJrjxKo/B4koB1pfenF5WmCIwEz/Xp+og144PTH+M
	 5dJkmxK49q3wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA79FCCF2C9
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179231763368.900.9856338550744498085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1818487b1e6918bec63fc59e5b8f7bbb535daab2ced274b4263606420738d60d
Date: Sun, 18 Oct 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792317633
