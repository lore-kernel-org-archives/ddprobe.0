Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1314E1C5F1B
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 15:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769354034; cv=none; b=q4hDj39i/UxKlkTCznuX9xvTnQgfFBdQ4Uy29rQ/KkghgvePS0qfr2jUwKhZS+O19psejNeXQSzymGUO49wUYPsLfmjcbkauI/z0VYqUdz5suXhTsrRFJy68f9UnFaXIYiJJkeqcSl3PC4KHHJDhLJzMhXu+eBV2fbZ5c7QG/n4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769354034; c=relaxed/simple;
	bh=xhGoItGVhsA2k8EDeX0x6AzcePSMH93m2fD2ER3wZZA=;
	h=To:Subject:From:Message-Id:Date; b=rqJ3EOY829Ab939qIJr4FVs4Tz1odHIWNDzQa7IefDi1Czy3uVT8zHx9tttQQac3fqAEKnAwTzjKpZpGDxnyYpQX0UKYXlkC3y1WoKSHJZaNdzxVfZP5xpS+JBtmiuqWxO0c8JGZ5X65XOFxyAluqo7sz6HUfjLd29udzwlyGYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uB0P1NET; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uB0P1NET"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC8BC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 15:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769354033;
	bh=xhGoItGVhsA2k8EDeX0x6AzcePSMH93m2fD2ER3wZZA=;
	h=To:Subject:From:Date:From;
	b=uB0P1NETKzbtTn7vhiazfggM5Prgk5HNJXQtKzVsYzf3L0MAdbUue/GcZg/8P5Of2
	 aUABZR+5NEcbM728irohFml6SoX4VcB61LJqEL3w8kDcUUjdgjjEFoFi02qGf8lSjP
	 LqyULnV0tWEkAT6H9jF6bfPAlf0/mbqUctviDvTt51H9FQJER0n2vu1hNIP22imZLo
	 ed1iJwFdL2++xiKQktL94e7F/sEBGKJnXFnzGRT/1/GrQWSi0JFo9t2Q3bViU71Pvs
	 /9ot9tJBos48AT/yMk6q+H5AtHfenqtmR/TU2szlouInl6f9FVCVTs6g+VLdJRem9s
	 YG8Ks1ywW2hxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A7AAE63CA0
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 15:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176935403360.12981.5089075740548165437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1a78db7824e1bad4d2c0b34fedcd3ae723614c781e09c4a9e62de4557251a80
Date: Sun, 25 Jan 2026 15:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769354033
