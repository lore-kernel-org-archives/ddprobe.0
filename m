Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DDAC28D84F
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 12:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769431434; cv=none; b=JCmrFkz4LG5Jj8pDLmiCaMouIVlj2j91wUpcc4HKoa0jYg3/OOxynOOjFBsWj0O3zmuZeT0yWUZ8AqXQQampAR7LXNIwkfMwd0E82L8Jm67jLZZYpW9gpb/rHvVBI34Y9KVTULalCHF7Ziu726RRlyqmg9l+/g83gEFJHP9q5Qc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769431434; c=relaxed/simple;
	bh=XQnc50s1XEOk0TrSk9RSnC4P4Zn0X+TaVI2L+Y+Po9U=;
	h=To:Subject:From:Message-Id:Date; b=i0LADPhBgrTTy0VFtSH5G7YmpVmqQf7uqZubFk2WyoZ6PXdZtjsXwZu5dpBOzz71bNIJkzyaHbpY9ud4LbBUHl++B806CM+nd4H+FiNRnj0iGTQDDmBzhwEkFP+K8+2s4Tiz8Naysy1hkqjj/1UwKCZVZ85Vi+dUCSAHL7fRsZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lvtElx1n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lvtElx1n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F842C116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 12:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769431433;
	bh=XQnc50s1XEOk0TrSk9RSnC4P4Zn0X+TaVI2L+Y+Po9U=;
	h=To:Subject:From:Date:From;
	b=lvtElx1nrRB14zfWzg0eke3WnlOG/Y/RMFJzcpjpE6gcm5Xk0BHdOdZipWFTX6hf4
	 LI/2wC9lDgLSlTg09mVOZR3UHa1VZQ+eslaXQxijnCiyRzl8tTHpXhCLSJlcjxBuK+
	 3L21qFfOCft+JMMWrZcIaBy5X6thIunHPqKGGP8+Qg3/QdUWiKVYuSAc9BmcsrykPS
	 L/64LMDL7LCfnr5Vz2JYBsWOIdL5p9/rMV77jrHAu9J7PPClmnaTGIIyuCZhov6o1U
	 IDjtuhEdywmiNhtkcx1q7So80mu8LEz5g8B9UssVe66PeBGopsK7krIfjziRkM6s5C
	 fvI7VrE69Fg8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EF4CF65FF
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 12:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176943143358.6929.8124705398594101544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6d109a82bdb1b6e1a0c661ee2896f7c13fa8326710e97fa4bd8d2a24e124d2e
Date: Mon, 26 Jan 2026 12:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769431433
