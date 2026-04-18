Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EDE71B4156
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 03:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776484654; cv=none; b=DTbKNid/XNaXuuqiS2L1eCUKJNO5dzt4uphBWb4skg/zKukOp+DMwS9J67q2laqtaDiD30C+auBHrnIQpFNCgSxSO2nAFW32k2JIGfvJHKEuHEJW45/rnT/qCOwCXKTAMHdexgSMyr5SDSMA+8Dvd+Snh5YKmLzD8ljH0r5FfgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776484654; c=relaxed/simple;
	bh=M/SpLv6UbRRM+8yUI6Gk4yizfcveZDws9RJOLNPp9JA=;
	h=To:Subject:From:Message-Id:Date; b=nPoDuVjNNJDoEpWGnWH+lQjYsG/RbExwHRRbEAzzDKaj3C4L9kCE/KcJw/zHspQ6NnPP3Hz4GjNsufuJlfM3H6VabZGuiiSw5g2V/9Hw7TQLTmTxwo6N5tTb4RweYh3ko1LHSGxmWs33KOYuZtJMCZfjf4mDk3srJ6GdbFXFq/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LU3Exp/J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LU3Exp/J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1A89C19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 03:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776484653;
	bh=M/SpLv6UbRRM+8yUI6Gk4yizfcveZDws9RJOLNPp9JA=;
	h=To:Subject:From:Date:From;
	b=LU3Exp/J3yExirdT4bMf45Z6Z96idVN7Wso83pvRfO0ReTPKjrVCnQ6ccA/7NIJzT
	 KJ6yNI4xkz3l5+szJHX+YRb7DzDof5AM8w+MCPjNs+7X3CLB16UBSDkEkLunkS7IVa
	 IyI481xQ0856p04iknvuFScHpjT2rnYnRKGE9+O2f8zi0cKaSy8I5pc8FYTivF84lh
	 ZR0qiPAgNtjjy/Y+pdWcWWWE6cMc4lq+h4R7ELpU3aZi9p9WQvv3yR+8PKDpD3j08v
	 QZ4h6miGfzv94Hyim+euvfngVXeLcEQTODvQfhCyW26SQf0sDjVBTPnsSi9lokQTSh
	 6sm21PxW45uMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF3DDF99C78
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 03:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177648465368.14441.8607597589522277727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6d2e949296c416312dbfe581293230326628ed4202eaa147b7c7cc50f78f4d7
Date: Sat, 18 Apr 2026 03:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776484653
