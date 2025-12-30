Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 136BC2FD1BC
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 21:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767129234; cv=none; b=W8PW7ENIvx4Hi4MacvvKzvhcgH5a/ijvLWPMjmUAaEhf5DrpZdXNeF4E2meaawpJKYIlmpc88E+aTMIjVG+BHVTio/GM7iLwxThaJ17khz03yCdDu7p7aoz401tRgVOhaep3mbRjFRZMi2kRujTE/tCLUqF6LYRpv5+PUpL/mr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767129234; c=relaxed/simple;
	bh=aUko9Wv4UYpjIDdIaNTbuah+3re3OcHgqyMNqnryA4I=;
	h=To:Subject:From:Message-Id:Date; b=SdD1yYMhfBXcNoSIntXee0Mzps8tLWUy7haQouGtOjIMD8Egi+bO98BfbrNeNVLXzsTEHK0J2Y9sIX4P6EvrZApxbE0BOinH3U0Mg3BZap3sKiyuwg/45I75z0OquVMTTClvdtURxldFwaH/KHGVYadO74wdT3zfcV4ct6rGaso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ddC8m+ma; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ddC8m+ma"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A113CC4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 21:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767129233;
	bh=aUko9Wv4UYpjIDdIaNTbuah+3re3OcHgqyMNqnryA4I=;
	h=To:Subject:From:Date:From;
	b=ddC8m+ma2KvC6nfajtkP/sdWcLxYHjqJ4QEh0xTo9t0g4eJ4xjWTOK7F+3b7rLX1F
	 8xyL9XlqO14qhd87Fw/vqohd8hw56DMstcnujOl+2N0q+rSzMVgbajTYHb4DCuD7XG
	 G4f2Zdn/yoHRVEMxy0TmOwijAtEtw1EeUWXbspOGgG9lFdMchksbzRIdH1IvCeKNT6
	 EKK9ntRAs13sAHR7U9v3oGGx2FvX4l12jn2adO0PmY6FhJOVmVD9RJ2unmIVv+EXp7
	 yM9PjnoVVqTFx0JoIn7R9SaSkZ+b1wqOAtCfPkaZ2hJX4Uj+aaLggyuOefu/kodL9w
	 yjDX9UuxtFfJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90042EE0203
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 21:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176712923358.26756.11525798603745400170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 086b35fe2119c30dcdbaa2689a2f3458d0969b82f9f624000c4b8dba8c285746
Date: Tue, 30 Dec 2025 21:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767129233
