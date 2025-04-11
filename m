Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C2CF45948
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744382395; cv=none; b=bD+vzXjN6usMndZ3fg0tJS0M3LAYWPdoyGEozKeNwEUIQiwSgSaN9mZtIsoBIKpx96q4pJlTXafdCQfZts9VGg9lDAcNxLVIVzorHsTzAH8gEww96kaEsMBk71//u+m3I6Desjyl+9y+M3xJoUjkBdYCSeUr+I4LwKqJ59eShjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744382395; c=relaxed/simple;
	bh=T6vU5kb4/mR9Le48WymAm+cJyTNyqwEJRgSDW0xeBU4=;
	h=To:Subject:From:Message-Id:Date; b=VCjurIpyEz5iqFw8VIFB2pwzcybQQbkuQQoizPJ2iOb/p8vTHsqVRyn+wDdRU88TRmSlFUqYjT0ShdwqDZ0+SPodVPbb2bZgLVhEawBzscF1lJdZUnCTpC2uvonyI4xVHdrw1yr2vuRKfmwz51Eze7+ogmIqHHrnypKcfKphQks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qWohlRUB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qWohlRUB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF3D7C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744382393;
	bh=T6vU5kb4/mR9Le48WymAm+cJyTNyqwEJRgSDW0xeBU4=;
	h=To:Subject:From:Date:From;
	b=qWohlRUBuhS4R55EfvNTdvEwQJAMsPsptbvAD9JzTItqvmBfFVj+5SevOOjMWaLYE
	 d+EgX+BI85b/aCQiVaLw1kIwJtMIY/z4jkLwj/XRqNhqJopgYFwo+PG0GnSkaitEPo
	 yaVYg3Mxmv29LR02z48epGngC008dR7XyAn5XwQaTBFpQU/++YDGVLDwOj1o0G1htj
	 X4s1EgbkwHhueKHRiWbgW/3ZQOThuI7QdDBSErfyXXs4r4bw9dIP23C7szb7Zb4vNh
	 0KULnGcu7JXII/X3IePkRSRfYSIWy5hJNMtlrgCWD3albZkNkeTa2YtsrRude+Apyz
	 Vc3WjbzwrELJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A81FC36010
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174438239362.12492.8606494237523581673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8293fcd380fab541ab6ae6d32e4bed03bc727e40f51d9e12b8e95855c02b12c
Date: Fri, 11 Apr 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744382393
