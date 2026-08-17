Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F3B8390229
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786969234; cv=none; b=s6+vb3HWA+YCGS5wWnQKhog+6VEMblVjMBvlfHnysjM/ntYBQu3UZMbcdWU8JkiOpXZWIMyF6q+tCZYm4fGg9M0nFIWpPjeqYZZ6bSzCArdFtqjMPsa3VnFvFTg0tkVC+fIZphOd2SM7S2iQ6C3Z2yRs3jjDWOBXCObfsv4eXa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786969234; c=relaxed/simple;
	bh=zQ73ODhVOHHjj8PdeaEAIcfGtDzRYEvVhTKVWG8uf9U=;
	h=To:Subject:From:Message-Id:Date; b=Bi1HHU+FNQiyBdiOd03U6hl5lJKow6yl7uxH02U2PECoCKua9uMbe1jTaO12wp9mNfWQFVRobW6a7v2sYqkueSERHuBCxL0xQwpI9O1QA7H5vKOSN/DJmVINnFSxuo0eTisaACI/xZDV4HQntu2JpPj8plrG8Gf1AVZq7hYPVEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j9A1RvZr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j9A1RvZr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4354C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786969233;
	bh=zQ73ODhVOHHjj8PdeaEAIcfGtDzRYEvVhTKVWG8uf9U=;
	h=To:Subject:From:Date:From;
	b=j9A1RvZrKxF2mLwSgLjD1V6CigJqXeTfoBQ2EUjA7ooln9Y/4gEqyCUlHZZI96/Oj
	 V1mz6fXL46MWZm0MNTjI3dMH4CW0Zv6cEkIM6ulqDs6+c+uXbkF0id4H5Enalbn900
	 l8EsdX7bgIamSDKF9Hn4skxdxbNZ1aoglhMb0enfR0qeS4m4a1mYDvY9CGZF25VSOy
	 WknwzgoHUH9VOz/RjS6BuQGqyMk8fcd9XGolf6z3VFkKbiT9GUfT9rNMmATtX4HKbD
	 heP5b+TZIdTQ9XOkjKTqXlswi8mwoWKnDN5yV/bKSxJmvvb+F1URCZrfkVCzxWBazX
	 m+E7q1TlockwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE78C5B572
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178696923370.27074.996134934924294695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ccaf1332944d85769c89ed4a331b535c0c94c9f1a3398725bccbddae8b02761
Date: Mon, 17 Aug 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786969233
