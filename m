Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8E643B1AB
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746384593; cv=none; b=SlBnIzwcmgveRUWxzNLAh2f9ZDYal14m3f4ocM7vMlItDjzhvch4KPCdaLU7lFhLrxi/3qx59z0yncR9Iv2o/bOsB+eKvcCaVcAaDL3A616FsXcnkpTzZ19BcsmpoDQXlDH77fqzXkzku3qFIgGFXSBMZEdPVdmaojsz2kU7lsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746384593; c=relaxed/simple;
	bh=yYNoz3Q3uVPaXZmEbdBVZFYI/05cTi4vYE5vaODakYg=;
	h=To:Subject:From:Message-Id:Date; b=e5wlbz/PZXRvA8br3ojvFQqyJmE1rC6EGKn1jhkN4mA0qbdm8UU5dA5qsoCkGVnTYVAAmH9nA6UBqL2k3tmoo9/rdTK0D7jRa6MHic6eXWtY72U8OhDK85YFZjSnZlFgzM/xmr8ihqab7Ynb8XI6k1ksSu7Y9RGFCWGp+ptleZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=br3H49tA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="br3H49tA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FFDC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746384593;
	bh=yYNoz3Q3uVPaXZmEbdBVZFYI/05cTi4vYE5vaODakYg=;
	h=To:Subject:From:Date:From;
	b=br3H49tAcuzXaD9BtJZxp8BylFX2k6IOHkfzluRDPWqu7RLpTaUkAJVB//lhhf8Zj
	 88D1q9ZBJcxxm4j7YAxE7fAjyvEvNudnq5q9Weri0iXwnNTRpAz+ELCI+f+A6VwOzd
	 TOUGc7ByzMRkd03IMgZ8qeYRQsirBr2nnvwsFidxKOVjrBvByYSfhMsMQ6HDGm18c5
	 7BTKWEyE7ZB0mv7KZaMcjB0taGT3Tokx2NJoszluP6ulNeGToiyALz040VB7Q4x3UN
	 X5z+WcQQUvtvfZw/h8JcP5Q1E92zeIoxp1cIQPzPqldwyTtqgICAyU9YMPQf3OYmQR
	 XdxJKPzVks0RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93972C369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174638459357.13496.2364557602003509467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8b70ce386083a2545c433a3ec46d1fdefe7f1255f1a1790388c05eca9bbcd79
Date: Sun, 04 May 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746384593
