Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4860E51EE01
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791910234; cv=none; b=dViCo+/7JdnSXq/UpMu4F+u5W1oikt65atxR3YhFRCOW6OIUoL4fhQ7HaZu2THFcnu6YNJDEvnvgttU0qvuowEmSebx2vrEa7NCBE3zpggD+ESxcqagW5H90vQzO+n2W/WSjT4Byp1milZqOjfXgSK3gr4l1FheeD2qV2VPRNcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791910234; c=relaxed/simple;
	bh=6GuCZJfVWrpWtkE8vo2x/YfUHvw3IjsXFV85tA7u5kw=;
	h=To:Subject:From:Message-Id:Date; b=fWw8VdAVQPxciKEtTzJVGj30kxpSlefqo0PB8mhkETosgdMUqrj9uoqwjSsQ9VoWHlrHg7Yw8tevUrjZBUDRcKfGWu1JYzsRsaQqIF52BoRHEOoNEelk6U0w8YYYLxfMVIZmhDT58cfAlSUum0L7s9IcBH7IuPgnSUvc1qC8kXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JThEVJZT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JThEVJZT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE749C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791910233;
	bh=6GuCZJfVWrpWtkE8vo2x/YfUHvw3IjsXFV85tA7u5kw=;
	h=To:Subject:From:Date:From;
	b=JThEVJZTnUTNUMWU4ByDD+Wc3gGo3ZWJZ48v7zX5BtXIA8Z65NWnvr68LEAeA0qLL
	 em6R+h5oruefGs5byytPFye1u26r91ELA7uV3i//Iu1MbQMr8VjKgN/InMzDDTtTuw
	 WrfnFBp8uDTP+L7L/O4DgyLu5HSTx5VhNL20myaPzJ8EWn2hspfi9IG5qpDzWfL+XH
	 p3dwmHFwmylS1ojcF9CW2HTz/BLYM28LHJktZNrjO5tfU2FJsg5xKolbK3akOZcRGW
	 6yv7LwO53KDLSODQqBq46YLeseB4gY2CVkRj1KYL4bkakiKxq2wSx3Td0TUug3B63M
	 EXq8qNhJmPCrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABCE2CC6B19
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179191023369.25818.7724911430656590546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fc9ad554db8949043967e950918e57937a66586b851b4c4cb83bd3f734f4e9f
Date: Tue, 13 Oct 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791910233
