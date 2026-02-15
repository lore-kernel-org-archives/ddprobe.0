Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18AA1299947
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 23:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771196694; cv=none; b=r4ifJkivSZ/FpczaU++SaS9JfhcsJ7HlBXEuVKdR4igwPLzt1kqRDzJ1ME/iWkQXsdETDJHNbk7r7EKhjf60ZOru3b5n1OcCABunwv2DbCX8cZSw5YeWBXrS62b8GbuLM6RUc+NMJS9OpzaK2hah02ChUs1U25Zlyca1o+6yCRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771196694; c=relaxed/simple;
	bh=aK5/qgCHFu9WLk9okCLl+TksQe2+mU7yMbnN86/1vJM=;
	h=To:Subject:From:Message-Id:Date; b=IU2B+r4BxGsoICq6YoM5pnPh4KHbtufKHpmM9hvzha3i+apLq9mf/X27NrVC2iQKdOclyl5WAe1hX9hmtczK6FkQOJeC/egBKMFG/AnxnyODeyaQbeN3HT57dY9DWAoTRQPc4I3q04OtBPotoGCdVGNvYgd/jMDG8sKdwz0kesg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U4TcdOTa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U4TcdOTa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE3E1C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 23:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771196693;
	bh=aK5/qgCHFu9WLk9okCLl+TksQe2+mU7yMbnN86/1vJM=;
	h=To:Subject:From:Date:From;
	b=U4TcdOTavkujxE5oZFfPuzM5X5D9ICiYbrJAB/+PE3ValGNA+suvi4rwLyaeshGLa
	 L/2SmrN0GnltecDy31MNkgJQXtjPxdmeodkCfqFHSm4LL4/jE0t1xHLpF5DXaKgJUZ
	 JyFnIZNWyLp6DO0JHn0U3h7ysyIraZWMEnKc7L8WHF/zTwj4dRD7voaEiEohZZxwvT
	 WEoH0yujYwaf4US5/WtKz1TRd4IyGI6H9Nwrir7MvQ+tri5GsP+qeoArIgGdfoaIJr
	 qpWO/IMd2JykdkSnhaK0NNA8bEg1ATgVpigm4Jw2C97emf/O60JQgpFp7FBn7a2o/0
	 ZJgnQ82G2eX3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F41E63F1E
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 23:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177119669358.2397.14666494247962802296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0383b0df74ff9841dc4db68e6b8a961c20a920ec6c48ee32acce8f1aff8273d2
Date: Sun, 15 Feb 2026 23:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771196693
