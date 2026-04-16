Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48EC53FCC
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 05:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776316054; cv=none; b=aSuA7sdEx4mwwAjWSb7ZUYACd5end1CBjz0wV19kiMzVCMgrZjlMjOljkgJRVJzyh9UgJAcZBkG7PkhUKpJKwT7weSgnNsp2Fq0xXdenCXDK4ogawt2jtETswViCKijlAzFd6HHclt91wUfVWlk6v0KGFNSmUA5hKnucCztwBP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776316054; c=relaxed/simple;
	bh=RZ3wF3gS2J3kAFVgXR+UYOYthTi2k/6+27o97U9kZ44=;
	h=To:Subject:From:Message-Id:Date; b=Qy7i3OBQjZgOAZW5DaL2sESTEZ1OMF19tKu+pf2szvGn/CYlGl1Q1PVcKfQxKYQvMsmZ/WbS91fXpsOnsBJBt1GOwDJdT+pe6sJ580+9+rb76HavetfP0IcJk9iPqHZGHwGVJtM9h1lYlEkaOnqCJkswwIZqqkz8mHCuSupfWpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aXoJcM0E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aXoJcM0E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB38FC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 05:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776316053;
	bh=RZ3wF3gS2J3kAFVgXR+UYOYthTi2k/6+27o97U9kZ44=;
	h=To:Subject:From:Date:From;
	b=aXoJcM0ElAJwa5qL3o0uLiD6C3kTvKW1afnutLteEdUaoADKbHXoAd881ps6cyRlr
	 iCxZxFcjgdNpTHehMy7e6umalQU3W8+5bNdrCO4fh2dLWQ592yH9hvR82V6VkRmSSn
	 HSsTirrPlVO7wqoFnRkZha7BFaSS8S2904vcaj7YZDpkhItIsqs3gqrFzwh/44dMHd
	 RQ0cGgAjH+KEywPLo8d2Wl3WtjHnOcySbDwhLCS7b8MoG4gqgfnJHD9+dyqrYokrrk
	 EKGXhS+Ps1TcItJZRG2CfK2epbhbm234HxKb6xP3GHDZMVEzm/aCVe4LOmk1Z4VEVd
	 cwORY9aj4Jkbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B62C8F433E2
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 05:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177631605373.26667.2243002707155396060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3400ac0b9d947d0bb568f5788756d4197852656d159e9cf043254f98e12ea3d6
Date: Thu, 16 Apr 2026 05:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776316053
