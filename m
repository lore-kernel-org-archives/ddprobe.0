Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2844E2C187
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 23:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772406894; cv=none; b=FooSI031VpJ9XU4Nn3rPOf9/UwBRmAwztlPS1gM+VpGW+iVM9SgCqbFfjyipquxIq2ul9JZQ5STksjS/NBtwkMoME0a5aOOWP+grDyWf5OiwqAOwizKagazhhIIyNh7EaUyfD/YvBymoLcZ+npnUFGci9wk7AS7S5blYQZACZWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772406894; c=relaxed/simple;
	bh=CTwYA6/vIlYwa8Nk7cSXD0TWHn6uXwjWl5/iXk0BMfQ=;
	h=To:Subject:From:Message-Id:Date; b=LkvETjTj8RyJxqR10H8xJhJf0ukW7JAPuLiqvvH4GCipWVkWFDOjmTveAZt70S5zGDPv37ONo686AoutUQcSgZ1kcv0tmqWqnIWb1x2DLcly2QgFLsM30Zh/6s1WhbNSkaGIIcCOWDdLFN+ofJ2UqlC/n314+XwRL1ae7nnF8l8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TZTpgh9v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TZTpgh9v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5B51C116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 23:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772406893;
	bh=CTwYA6/vIlYwa8Nk7cSXD0TWHn6uXwjWl5/iXk0BMfQ=;
	h=To:Subject:From:Date:From;
	b=TZTpgh9v5sehvpq+5l7y/sn9GP17q/qCAIMGd4fIGGJYKj7NSGbexFYOwJbO8XDWw
	 9g6PU1pvdquxQTNimoOXLEePDlh2JEkeLKZ+o7jGVG3efGL1Xghi5nxHnPN5zKsb7R
	 qGCM2qssEf8W3xDK7EKNlRBkKsrKLzlRU9XNT3H7WOEd0moIV3ENJvBz83KDv/8kqA
	 70HzvQflHnfcRQTB8QHzY4hrnwl0nS5hCRXjKs7f7ehD2TfAFp7MskxNQI5qaLtlS1
	 VPZ9WwEkyf4oooafa8XnwCCh5C1jO2Slw6neDxVAQByJtOOYMk/j3bfOp46r8xFXKN
	 BMksxVlbj42fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A84FD0076
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 23:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177240689362.31591.16459154069252261964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d42e353490caafcb37be5031266b6a9a31a9d6f47f04336b14260f50b6062a76
Date: Sun, 01 Mar 2026 23:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772406893
