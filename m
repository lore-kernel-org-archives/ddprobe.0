Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339721DE894
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 08:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767429834; cv=none; b=u76lHlXUTwWSbW8dJOuUj3FvOlVMn3XUwJUorYfgaNGdXG0VSfJt/wy0nFrGCJ6cgWgNQpT90PsYsxiCnuy5srkpH7AhqrPBOpP+OFQW7WrPwPtjG3R0SfZgMGTZ9mSpEx45neoLJ+xkHayYhQEccDUj8H0o6IlY5D7i5yR3dNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767429834; c=relaxed/simple;
	bh=eBuVfAkokwxViZEMMIGD2MjnIOjbSU1PdItI2IyP5Gk=;
	h=To:Subject:From:Message-Id:Date; b=qnQOAg9kon0+BKnFYcfvOB9a9h/IMthC3SuSOWkBw/cBmtdUVEjH7cGsDiltJHFSiuYJlDb+zcgQvJuPy+wz2+sDpEPoOSKk2MtXc+0C4L6o5GgPk0UEc+yH0dJjNF1QlYDlnmjGEzPW2qwYaGDrMtYjVN9/jrwY+y+B3hmT6eo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OL/0EpEV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OL/0EpEV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04CEC113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 08:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767429833;
	bh=eBuVfAkokwxViZEMMIGD2MjnIOjbSU1PdItI2IyP5Gk=;
	h=To:Subject:From:Date:From;
	b=OL/0EpEVcix0/fFmajEDo/cp3l2qSEYg+PeeodIwC1dnIM13BB/o37nr+73iDLC9I
	 GIYWTVnrXZ++Hr2Qq5WbmfkIGXuCGOzhnnZfQy5shkk9i5Lb5MDEaGW4jTMDGpZ3VS
	 6SQ4b/45GrOh9KFDsweJ5Zov4kVEr1W73fKtyiM9s/mwMRBG2VB7eFVamevqV+/Bwh
	 dPd67Db4tvIPR9U+vWo0nNApVmvQH/1Uxt0up22PM4cMqNwVdk5EnU1EaPXB214NCI
	 IYVDSlMSA0v3vvHrMHXmsf5hONEA3LgU3Y82P9zim6U9y9q6aAL0bzQrzW1VnKQe2A
	 63kcinBNz8I+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB27FC6160
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 08:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176742983357.19358.2247503909545606709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b546d8f40767292e217c2fae0a9a945c31b0c9a5fcb039b8dff92a995c760f34
Date: Sat, 03 Jan 2026 08:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767429833
