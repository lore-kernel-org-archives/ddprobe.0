Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8785146D45
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 11:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736077554; cv=none; b=r58olxRw5Slc7H7/nYnKtcjCjGmfpftLDnvcVwIOul/n5uzXBctEYfzTNw5zgLfgMQWUtqUpbs5fp0ButwxH9LySKBHNDJlc4izJO/1t6TIRcoXgjt5BT6Nl0PawBlEI8EyfXC0Jqopie8H2dtVB0GA2+wUCgXhrtdHWb9kxKd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736077554; c=relaxed/simple;
	bh=jtQDxtm3CSZZyDbGzZUnCAysfydbIFkEpV3aCoOHKVw=;
	h=To:Subject:From:Message-Id:Date; b=BTwjBoLfX+jRxZ5EAi7R8FebdMSpjVDu0IKUxQnbh+0zPPZlb8AkB5TCKzuypR5wA+lAOCvR9HpVJpOsLX7BU1z+Ig2feRqoacwIpvI6oVVFrKMXa1AZmuKjlTi6K/HWUJ0ubKCpgxBXtQP9JJTTvEjTPimL6WYCIQVNZzOckEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DNr0M+Qo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DNr0M+Qo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 12665C4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 11:45:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736077554;
	bh=jtQDxtm3CSZZyDbGzZUnCAysfydbIFkEpV3aCoOHKVw=;
	h=To:Subject:From:Date:From;
	b=DNr0M+QowB78Q8iaD8oLyyX4FUsx74IFlkanhl5CujvClaJCvWBz5fNO11oYbZb+w
	 A3bMZCS6Rjtumld8Ha7mmKvCmQqfrRhUZj+9TnZp6lQXwKNcyBXTTXzjewSPmN4al5
	 tb+w3rn+H/4Yo/oCIGwoQQOMJJ1eD6kH4rOtb7f81SrHvGINEQ4eV2npVcBHeJFYWu
	 6Q8CKnIXVOgFVYU3VVU7McWmthmuCXZut7W2QFwPcu1vVhhLTliyuTN32O0nf0VxHy
	 RE62T1ioz4Kr5h5HxkD9cM8r/hhc07iakFDhDv4Cl5X96Ui7aDArXlF9gzpNMx+nZi
	 QKJDtXAXaPD4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C82A6E77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173607755376.32215.3557000001309024621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 452f816fa7833dd52a1bf7a392c5747e37f017af4bf1acd6e12db2a68d744c86
Date: Sun, 05 Jan 2025 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736077553
