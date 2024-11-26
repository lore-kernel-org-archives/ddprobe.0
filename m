Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 303FBEBE
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732596354; cv=none; b=ipn8z/sPgMwFX0IwKkzL/vfX1UNttB2sKMqGo9BwjtaO90xagCGKqjHwNncbRNU9IQqXRYNSoDiloy3ncgMYLhLQUij+qj7qhTzyYXoDeWLZ7EymAp5xYCFYopxjGkTsgBZtqMi2RxroW6QLxM8H1GV7AnQl3Ij5QPtIhkkRg4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732596354; c=relaxed/simple;
	bh=sgrjLFk6mGPWLVd+20SPOJm7ppme0dKq9LknN95syUw=;
	h=To:Subject:From:Message-Id:Date; b=Q7pr8aAexpzvSPVGxxpk7NU0qPXkayNlVQturJZhWVUwASRRN1Sn4jCCJ+tXNq0pny7jwLMoHO+/Er9Oz3FM+CBFsxLChZyGXmPLJ5SDn+zz+NJLt7wkQ9ac6AQCQAnE21ht6GtAeyF0v0vQT/gxgw+RmwcPXUb2CB51BpYK4SU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tveZcDGk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tveZcDGk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB262C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732596353;
	bh=sgrjLFk6mGPWLVd+20SPOJm7ppme0dKq9LknN95syUw=;
	h=To:Subject:From:Date:From;
	b=tveZcDGkV/5hpAh0IudSUmqe7gt7n8p49lV6q1gEGIpr/zcwk9C/meIthi5zLZKM4
	 kvePY4BIXQqIYVLrdaCeQ7Ol9o3DguGsm3C4A1m2oWLShhfSwP1Tu39e5yBSG24Xk4
	 N1OsHJSUSwmHQLJKdj4pQ2lXVlF+mh0As4LEQdoVsQaXAYfSpOWGxWtEOEUMqWAFI/
	 dVWL0LmV8FBFnjry6so1d9piYDcWLd0g+vLnx/gfjEL8KGafkP9AcC77JDgGic1rLO
	 i+NFwkvHT+aV4AwJQPoJrLSo2ZzUqd3chID7Nc3icLtiJoSisqNqkTLY2usmZ2CPF4
	 RT+Yb5q5dBPkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936F5D5A6DF
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173259635358.22022.2159721859019428314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a83593282475cefa1c309829352c8a61d795f4f5a363f9557b94bca6f3e50f94
Date: Tue, 26 Nov 2024 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732596353
