Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4624649B5BF
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790884834; cv=none; b=gQCxYOVN+dVqB7SyjFwv+H58hb3J+lGqWZo27lhC2VLkjzU2Wn2qnoTE7ruiSph90KHsaq15UunyeaMokRGGpQcpQvRCMEeSIsh0QtuZnfbve5tcrkQFHhx/JvjSYXMTW5qla/aV9Q+NXCi52V6rcqHInSa9s0ob/I8b8zP7uMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790884834; c=relaxed/simple;
	bh=ctRchmess160GwtNOXTau02ZoR8Xb82y2PbbnlohzYU=;
	h=To:Subject:From:Message-Id:Date; b=JQeZ2lxjEiIg0BNIQLC+8sgMaCsz7/IZgT7bow8md/ktEjDNUyEe1b7NmpEf4ASPc+/PXJHLFJZm1mmMpolB3viq2yRJhQjEzuS1YP18wlpa5sKH6HUqbYuXQG+B6didmzc59WOtMCbFhrcVkNixBM4+ELiM1e73ECi0xN41ZCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cvC344tB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cvC344tB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD714C2BCF4
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790884833;
	bh=ctRchmess160GwtNOXTau02ZoR8Xb82y2PbbnlohzYU=;
	h=To:Subject:From:Date:From;
	b=cvC344tBbD9QMXKMmWbmkIZnX8DGvedPn9y3TVtWzuelpXT+q3wimzCQK/Dmb2Jcy
	 DEcknwjUMJQf+fQIgKXCMJx+MLYF729vm2CusNl99Bt3sxZ5pmDVZTnZ8d5xuQOZm7
	 lph+jJLQwFeppYorr1RY5g+R60z743NReiaKLqvdcFwMGeblqksyj+FhJGnnXFA4W7
	 4JgtAaBkLkPaMsL1URnwYi040I3hthZEmkcksf+pUZc01yQJuT6g2uaEwMz4AIqBjG
	 9FExDNA4RvJ47hJhnk0rK9ASgf2bn8KDjp9PAoa5whvFHtRGXI4ETA6rKt3dhoQfu9
	 ljY9bFaEFeL6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F49CA5FCE
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179088483368.30195.11729570428180934590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a913052b9e6a6ea2a75a4129d9b2eed3f569fa7adbd02f9492d8f26e6299e7f
Date: Thu, 01 Oct 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790884833
