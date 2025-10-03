Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F6CB1C6B4
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759500595; cv=none; b=ibUQAoE5FLG4dpljQahETA9sEfIwJxbxbo5lQsAzl3iQAZn4hUafVRg4xEZVzyp3y0jWN/BDuCXpNv/QwwLP5jWJadxEAYuqjryfwo5uAAFONWUo+6IO55XrMMp10jP6DCYHEpGgFHpIAdQe/Yh5/xkEs7D1QKAHMagNejEZTrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759500595; c=relaxed/simple;
	bh=42epQCmQ0eUF5HqbbIB/DgmycbRmiJdNZT6H3QZcLh8=;
	h=To:Subject:From:Message-Id:Date; b=Wt8tumrmfEbZzDQgCsJesr+GxCQetsXxDgp0ZQvu5kMMM2syYuDAkHzWuj3pAZT8WhGUvf6BHLKERzRFNSZnKnuD78lH7/O+QmyhH0vtqBPUc7+WJky1ZnSKX5DH9ySJgQJtnAnV6KsEh8V6dTcf3+IxPRp+ouSeM0LF3RdM458=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SfBxw7PA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SfBxw7PA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A773AC4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759500593;
	bh=42epQCmQ0eUF5HqbbIB/DgmycbRmiJdNZT6H3QZcLh8=;
	h=To:Subject:From:Date:From;
	b=SfBxw7PAaaAEhSqUXlyfEMVMI2ASLbntbbz2kyt8D+mnEY151nYcyVuJvZUz32dtU
	 A+p610PHwAlqJ9a5aWNRStXbR4LyEwJlV8RouteNzifQn4SGPHMxI6jZBB661atVE+
	 yvziRw3x+S4GF+96gypDkWJlgTrSmIil0KB0tiLhRmEHmu494xcDrqgFxl2QchutId
	 aFoUsEbwaGUvezQ5taJ4OQTjJL6BPpcGPP4AiwaXraLGKQH53MT+tyRIY9R794/OOj
	 3bVa42xBVWKS730hKXIDsY6JyPU0qxLLIrtPX4SiO99YAuhmGRm0Gvf5OVpY0F0I+x
	 sSGQxj+4raBSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942E6CCA471
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175950059359.9174.8335820637507566761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d13fa388ec244210bac7fcc7efdc0db845ebdb0606474cc52cc8bcbd7827aa18
Date: Fri, 03 Oct 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759500593
