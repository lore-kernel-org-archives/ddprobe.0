Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41C922DAFDE
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761224994; cv=none; b=o5SwylEGUhpasvCcYFQalcDLFfyMyhJB3Ms6vty7iqdi2Cs8PLVsKoxmCr7zEdFynx3mMdyi72XiXNbF0kXzAbGec/6M6jpYmRTvKKdU4RMLEBfG+0PYhSTl7N5FkuGFBlWEFxKm7c2gxH7oaoE/bM2o2bw08z5LzUDq4KG05Ec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761224994; c=relaxed/simple;
	bh=Fhg75iBmw6Dajbjyp4toWQb65v8BP4KiPjtf+0bqU54=;
	h=To:Subject:From:Message-Id:Date; b=A5P8Uaml3ntbcVlf/wRDmStxuhlRmSskAMXo8zYP5YnqTqQQ4SVb0SMfZNF29W+rFl+y2k/JEDULOHVWQoIoI0klryi/+8ny7v4BSbP3hqgSyIbgo4CmM9Ow+rVQ7k820eTiquu0Nz8wwcrgB+ZHXlZ85UwErcVz1UO8vnfFFpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=apbo3mie; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="apbo3mie"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E803C4AF09
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761224993;
	bh=Fhg75iBmw6Dajbjyp4toWQb65v8BP4KiPjtf+0bqU54=;
	h=To:Subject:From:Date:From;
	b=apbo3miepr85ElvcCY2/jU5uJNbg+8+xE7+kLoETTD/7vmD9lQ0wysH8W+jAhlHjZ
	 SFg+ULrxwdvkDt7b+MWtmS+8d0aQ/f1NonEL46B3Zgm/f6ReZTdeQqlqHBZViNyA7z
	 g5qVABMQveXYPuj19IkHaFPYLK9BNVbrmbEruiDLpZ6gOMyfBnUnaaxh1AGyh8ThRD
	 OlodStmfIrzP13ovH2or3rSBkhlc63gIPvelA13dCMH/L3MdZ+yaEqnZyHdayuo3wN
	 J5oCitTgZAHGTUrX8aHrTq+vavrfNGWmZu2Qnm8c5PPe1KXik9y9MpZg+NHCAT6EE5
	 qRODdbJMwP6Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7EACCD1BE
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176122499357.7561.9936446481443228726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81a4cd23e171b2d8a7be82c33e0a5efaf5bc6e1d98243fc84faade4de602076a
Date: Thu, 23 Oct 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761224993
