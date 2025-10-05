Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EE986FBF
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759694394; cv=none; b=A8Hf+lwDqVA4SRXnRTDachLshP66L30WVXWsHkfm1hkJCc+6TEExk797CbfHKImLeDNxbn4F6QvXbrRsfsiVuaoKRay8M7NSlykIkFFmjvvy+0SG0KqdqsoACrajdv5AbN6rpaIoDUGEojCrRUJGJ6PnyRv7w7uIwS5bGjT2T90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759694394; c=relaxed/simple;
	bh=bg/hddLmDFki4izuUU1KK8vaF4/le1qvOhVc04eMM0s=;
	h=To:Subject:From:Message-Id:Date; b=Mjx5Ty8ofYfYwsjeCaRKVEEjUqDNUOQgx/ZG6xlsa7LNGkigSmgB77P5KZ+GSKI5tpvOsIRy7HjKhZFTGKHpjWm5CNjC0jqyg3i0OYT7+FajSwWgZhbh1Rzp78oDcvJIXsrMT6lFy0sX0fjHni5LFwk/11zMdl6uYNBWfP1bXY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A4NmlThG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A4NmlThG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69B1C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759694393;
	bh=bg/hddLmDFki4izuUU1KK8vaF4/le1qvOhVc04eMM0s=;
	h=To:Subject:From:Date:From;
	b=A4NmlThGmbT8Vw2tNqDwphLnadFbVtWCM234enqltb3/UxXb5sE+ll+2so5cqg1Fe
	 1jrtpoDtjBl2awpWICC3ofr2uWrjOpow+oVhVqbsyISDEHtOM3y1MKcNXcNTgNJIm1
	 +mjCznP8fyDEaO2wCTTRkHywzJ/4UKqgJvPTQURXEaTiCuw7PpR1zaHxF6uOkyn0qt
	 RsEWT4+/P0KJ6iE/YobiUkgyNyAJUVNh9wnRL1cro4xzaKnK1WU+F+XAKHBChJujgN
	 2c7budyTQIj/LKkAUUsZ2YV+Cj+lTpfrP7H5xlCOzI5Uc3qmyPsJJUl22VvIxOdxxL
	 evPwgaF2lLiCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9120CCAC5B8
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175969439357.28206.11629043493157790059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ca337770200befa217ce34547c7b548b266f7cc00106d2e1cfbbe58468c016c
Date: Sun, 05 Oct 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759694393
