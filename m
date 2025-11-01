Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ACD1DDC3
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762005594; cv=none; b=XSsQ7BKWF/ArANZ+ISDw22FAMzufGOVsv8Ut40hwKPtHE7JDXrkKLIuqm/cAmQnLRYQLSc+mG23imEr82CEIdtLmuBQ5iX5Xbwbrfq2lfb1UR25L7mbaohvQkOL6OKRi3o3DXHKNstODqf9KWHmbsBornnphYvniu41xuwZq7lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762005594; c=relaxed/simple;
	bh=iGgcIcQMbPE/+BJaCRmj6hqDO6ePWsDM2oEmwL9gvt8=;
	h=To:Subject:From:Message-Id:Date; b=kCFX35Ip0BXkVN7w/5UzCjcmlmvsTCKNTvwJbdMhfxOTfdZIdq51iNARITi8Q1UWgEV9VW6eoeNnIprQUtHC78hIZO3sxiVTAERlQnoRKd2w6qN8pXsG0dqwPap++Cqw6hZJhZSV2PxJ6xDSSCGtfXAfM8QVzLKfHNWEwchNpbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DaFDEvNL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DaFDEvNL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4662C113D0
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762005593;
	bh=iGgcIcQMbPE/+BJaCRmj6hqDO6ePWsDM2oEmwL9gvt8=;
	h=To:Subject:From:Date:From;
	b=DaFDEvNLB0I95f/ZzrrCMfazgXlplLe8nxFJVCKVRjnqEa2YIpzb4ZuwBLNcFoaEI
	 SGoDWKI0oS4FzDndwT83YWHtH8H4JkQYTi9XydLwKaMlshSZNNlMRtLkF7Ng6qWUEi
	 2u7rjMQ+o5YVeHlgDKlLNGA9XaoT9A81+/aMtcMHeP/T7Q6Qmcvl/cOfmTIc2ZUAdV
	 oH5D1kSauKZgNqlv2NlyGkuw0/B+OBC1MQpkH9u/4Pm4ejPCiPRxCiiR2K08UyKpdw
	 O/r8jrM/acPKEBHRkawKVi5YX8kJ6+Q5nhnSVTUSM31PyY0yKVpjm61w91N6P6rIRA
	 XLjfUrQraipPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91178CCFA03
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176200559358.21383.3708311321865127015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e435b7db52edc7f7d6545ffd10d980277e4e6083fdc150fdc7166c563ad4a1e
Date: Sat, 01 Nov 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762005593
