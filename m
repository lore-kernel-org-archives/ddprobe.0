Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42890284B5B
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756150794; cv=none; b=DprAGj+hIzrsFLbVtBhTeM7gMgJpQbut9lFZZMquXZaJ8z9yXLwHJVdkirVsGwSDe7hZzeCOJ/ddBDtSUGP0EmxUvPddcIAMlLGvEkUcbNwG5Kb2TJO69kcobwPTIWpWmGAEkWK4L46Ik/3ozoxxAyPqzfzDBQ988gw1HTAnaU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756150794; c=relaxed/simple;
	bh=J0nBkZsJD8u7m1pJhPghkU8fbhx6kddrqZFiIx3coVQ=;
	h=To:Subject:From:Message-Id:Date; b=kh3zZYRPXWSLes+jNgW8pilwEZinNi24ebXrFFOB9aKqgit85TZD3HgFCxYMRyrQFQj/krm3VtW0Wlh8WYYJruktysD7C1mC5+dmuyJMBCbjpztIK9Wzr/Mgv5bgQcSAb0b4LKjYtUESipzDkbVBueRn2BB2nAgeqdlbujpI6/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gN0UC+i7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gN0UC+i7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41F1C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756150793;
	bh=J0nBkZsJD8u7m1pJhPghkU8fbhx6kddrqZFiIx3coVQ=;
	h=To:Subject:From:Date:From;
	b=gN0UC+i7wgAEiBYqOy49kn9TH3Px+0aWCOv6zT2xyh1PcLntuI4Goyu8tcEa3bBMR
	 sO3mrjwfFDdyYwFGS6/SQmwRrSnYnc3UKu8H5iXBi0k2VEs7Kpu3Y2wQ6T0dun0HyL
	 MTgqtTfVsPVPGss7arPE+Oi053drydLSZbteMf5YcnyOmsGX3WICchDmkgTcSinI3X
	 lklKiZYFfXirgeb9UqNdC2OChvj95isYmZDl6FYTpJA6lr7ZDzpPIRrv6/+NmjW8Cf
	 Ku1OqL+TmW8GXCk9hQ5S+OYhRwa7F+vHG9IL3EY+9LjQc1dLz6HSu9GbGx1ned9Frl
	 IoVIJsDNoDkPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EC1CA0FE7
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175615079357.20883.4482149263904238930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b40383f9faddf3e24c34c84124a435968d65790e2adc434c4a1ba3a7ab8c58d3
Date: Mon, 25 Aug 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756150793
