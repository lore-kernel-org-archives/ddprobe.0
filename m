Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FCFC1F4635
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 19:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739215554; cv=none; b=XgFuwEEyO8AwQLzeB/aAMRFmvIcGZQ2+rqYEC2zjTiv8DcRwmptbGxAviMbNv2GSo4Zmti4T1CwT2nKpLdQbKSEgTjmlnsO3JScqMctliP1qoJQ+eu0zFn8u2GAK4Hvh7HNK7CfP8XSdZn6WYJqOXS8KmSvU6AXJwo1B8INFpkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739215554; c=relaxed/simple;
	bh=khK6Y1cyy7eyyd/cXuDD0vNDSFjlx7v4Ix4FRDjuqTU=;
	h=To:Subject:From:Message-Id:Date; b=ZByT5adZqOlWXt5eArI9T+w4zgpEWSqHjG0XSot9MdfxPae1wXY1SAzvOxTxFWWN4DnOqkHqJ4MVr9xUK90uTNnv9ep8Kopv5u2QQEZtLl4OlFKCaFNk99My6mvRxI6Q4QhUlILkXlFscmN2O4tVs6lz+C2+pFkeEIGzmuFDwHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TJqaZ7pe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TJqaZ7pe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E810EC4CEE6
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739215553;
	bh=khK6Y1cyy7eyyd/cXuDD0vNDSFjlx7v4Ix4FRDjuqTU=;
	h=To:Subject:From:Date:From;
	b=TJqaZ7pepJXxDvIb0STZ/yzawzXzuGvZGD4YFAVehrZoJuTSxJ53WHp2nHOxjnwnk
	 rOWNbSy7QKe4lwjWb3pkmtVZyJwV23jqc0gd1f/sCEqWZ1jwUXcVGQXTHIYvuaO6Nb
	 C2oH5QpUhDPNM1KhXOsJQ2l//qrZZFQZUl6tt7UljLs+9XOHQtyHKLorrPz9uOy8HS
	 3wP3EEKjxijHKLcaOhb5quA0XkLAumK6Jq7ghmhv3p71EK/iW95bWiUrZGNnFoJa6e
	 vdGfvHVhrlLpwLkNg6iJtBfHYwjNRWtIwkl1fGkwg8etEUzBhHv6jTzvUZkRhnez95
	 CVCXK/Sdu8t7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5C41C02198
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173921555371.26341.15932086150789452820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28d9e1ed187e9f70abb5c1b38271e8f502fe0ad2c548ebbde6203b1a96eceb37
Date: Mon, 10 Feb 2025 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739215553
