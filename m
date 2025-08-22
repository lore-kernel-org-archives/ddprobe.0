Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D75D4639
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755821393; cv=none; b=akK2jBCcBA2r3BIWqNe8OV0fviWsPD/JcUF0qoV7zao0AdgaXn0FmBTGuxPgtNGffEhWmFwyiAUelh6l4EgXK/1K0Kv+2RSgRWb1IvZMqn1d6Czg8ieH9dIV65lRSJPG4pvHYP374NaNfG0GKVfGeh26Gd9HBsGzxW2Wf/LFJto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755821393; c=relaxed/simple;
	bh=CbNDrBKxa/N6mC44GMbeKQjMR/CAOiP81/i+yJkpZ5Y=;
	h=To:Subject:From:Message-Id:Date; b=bl2xac9WsubS9Oy96NW3F1/Dl/5tM9mVvk6zWV9r9fn41Xjfv+DowAAgw/vddSznM8u3pBktwkyDOf1reRUdTH0ixsg8R4S97XFsRoK6atUiilaoQnYmCNnDs+MQkR5hzA22L78NAdOWvkyH0x21iiq8rryhCrmMkdUuATYxDwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MAo6GmHL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MAo6GmHL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FF8C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755821393;
	bh=CbNDrBKxa/N6mC44GMbeKQjMR/CAOiP81/i+yJkpZ5Y=;
	h=To:Subject:From:Date:From;
	b=MAo6GmHLWmB1glpmYMxGRQHoq9g/igmQyfYDGspMLYkrZAB566AGu5mLglX19SVan
	 7Gezs/qdqYaNBsArCN2drgkCXItFXPBaqwwn+V0Vo7WGTlbPR61+t4sedlxQzbaFeg
	 l76+mZlUTBcXNKvGlrNam0+1hIa8B0gqdXON3dDpxvV3u2ZDyx4FvkydSHBSQHz8zi
	 r1NoIP/Fa5OumP9w9FnFx5PzWjZupKOVB9U4WuGyKYZefuzgyEwPAsWdzFc2FY03++
	 qUiZYrg669xh5nBoUzok9Vpvs7I3Lh1zlQ5I+f2dIqNbmC6agzqMO/HxN7Eyzywmei
	 Ei9Bu30cmhm7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947A4CA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175582139357.26887.4264910843460963967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a06498aba9b545e0cf05e930e009b3f4bb9ecb6547b13234eca0a37d13c39df
Date: Fri, 22 Aug 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755821393
