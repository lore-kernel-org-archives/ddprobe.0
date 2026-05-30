Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53C201CAA6C
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 14:43:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780152214; cv=none; b=F9jjGpU1qNGttSJdI422yvRODL0sckE6ofGwXIqut4IhV2OM1WLdfOwzAHReiS2EcyAJov37AqLGKHTmanHhhvpZmG+TTzBHBVne3doKYuwyJsYGrRkjFfdWUP5uopbx9yCdNevqxrmD7ZQiXpAw2moASVtY77p7BFVggHNAWk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780152214; c=relaxed/simple;
	bh=V8RhjlIrfwd49sxbAhrmobnhLjl2RRhnYscsFLdGXjA=;
	h=To:Subject:From:Message-Id:Date; b=p8IHUO/F9MCLdYs/4ybJGsvbkQOpwboWfTTjPGKvfjvhHS3i8tt/7Z8f1TQqd0TUJs9fej6V2RZIGNpKg4BLCue6yIcJZY9jZefqG3qN6uee6c2DjNa58xHM3SdLHBH9ohh1ZfEFxRBINl3uw599nNVNuda90J3FNM7Oa8DXU2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YJUVLNfq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YJUVLNfq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C49FCC19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 14:43:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780152213;
	bh=V8RhjlIrfwd49sxbAhrmobnhLjl2RRhnYscsFLdGXjA=;
	h=To:Subject:From:Date:From;
	b=YJUVLNfqKl+XAa/cmLQuoCRQTqh5x8OI/ssfjefJZ4Sc0gHfWp6ju2EDhKcp//C+7
	 v6DndGsKZmpqI2ejgEvGqX/3InzicSWbovEEkQOxW85dkGwRgx8ezK40xZzFU5DH45
	 hJlC6e0tNIS3s5M+t1S/AqeGbBC9EgWDgAfCcs5JZmLS0zXdhWj5PgVHrR0g1hiFts
	 fKlkMXD2kDikjGCHh+5EWjkXU86mgYwOGSJA2xIsdQvjc14Ij7E+sZQ3U1pe6Fwcwe
	 yXZgBVye6KuY3iQ8/Naqee/+POtuPR0hG07uAZYutbl51BB9Al7ZR4EkLYVypZj1Kg
	 cXDtynYoL29Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6FA3CD6E49
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 14:43:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178015221367.16763.3863013958143280518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 750b7efa3ef102c72d34d3719a4cc3116b3df076ec721a511f60e13b737f7659
Date: Sat, 30 May 2026 14:43:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780152213
