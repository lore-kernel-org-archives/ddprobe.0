Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2CB63D75C1
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 14:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776265054; cv=none; b=raoqYJfXI9ifq7V5GGwsbF+IP1hFibSy8J5VywScSsRNWriiZp1Oy5VURtdd/G8AFFCTZuol4UkvmNwVxf5np8ujRl55/+gvUKhdbyzL7/dg47fvqIYlF4kASCoNt/5I6tAIs0MSfg/69/pj3Un02x0dDHOugAyMjWz/V07hbQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776265054; c=relaxed/simple;
	bh=rHZrG9siuR8vPw43EHnfUbDlclJS7EUskhnUqcz7sP0=;
	h=To:Subject:From:Message-Id:Date; b=YZKANw4GV7Z7UICuZ70FlyqBjMudkhUzC1ynLeAoO97f9Vsmx2vfOuLK0f3e2wus/ENIKfdJdM2u0VUCUpwGpjqRgY5YhXGllIu7WMqdEFTn67Lad/5A62QHuAZQHrzwJlEYwJt3eVZFdzJO/pDFoD8OqdSkKMtIZ2AXMqMg7T8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rcj6ScwD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rcj6ScwD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC2BAC2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 14:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776265053;
	bh=rHZrG9siuR8vPw43EHnfUbDlclJS7EUskhnUqcz7sP0=;
	h=To:Subject:From:Date:From;
	b=rcj6ScwD3sHDzQ/xFm1N1gfg40r2gSU3j5cXSV3Tn4Q7XiXtwxgDTH+k4Zsd9sI2t
	 51/o6lhUN+Y+K7IInrpOWRKGNJ4KrOd50cwyyg9oait34Gi/8H+3WThdDDEviky0Ah
	 VJiskuZXcV1KknCEVnWMF5fVLCbDgtYR/Ls4z+erh6ytUvqpDnJ6+SSBiptxox4djO
	 PHncpVJvbUs7X/6J7ul8BNnhZprU5HPQzLP5XIPHtc5/UAid70GBvUqZ5UC21FgdJt
	 HcqpQyaexrYjrKMfBqs4TE+zLx/4HljnQjycOsRvzRdjFd2TSRqMMJXf0xex86WPnM
	 QBrmlQkXNDVEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4D4F43830
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 14:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177626505369.5768.4768301375772742462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e314df65743534b3570c240e16d3ad95cd8b88fb7ed619d4c4e2eec918d4783
Date: Wed, 15 Apr 2026 14:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776265053
