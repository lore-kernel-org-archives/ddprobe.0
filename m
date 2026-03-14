Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F664315F
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 02:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773453894; cv=none; b=fmGkh0OAGCXEh4cNOxk51VOchYVzZbMAztz1JOg4cUCRbCZoNVmlPypUHcz8AXB/JT8Hj50hUxEpGxiBW1MigpQgnjmOFhJcfg1etSyklbKx9c7/iPT6nku7sq5Co2izM3h4hdiuARWZrmSQ+AdPlceF4Zofz6fAdgPRnmEA83Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773453894; c=relaxed/simple;
	bh=rDJHTiZvQHcsbu9Nzkby/VDlDlpifbBfSyQOJrovRL4=;
	h=To:Subject:From:Message-Id:Date; b=OQ7lUfQWryGZX7Vm2vUqsymzExdbLkNv3nm4HEMWZaHmUcZX8K6LfSrVCYW9K6q4712vOl4P2Ua1qEfJtczwIdha2Ss9wpOLpQFJKSgNalY6EWbP+0DFzjZEFsX+KvdsnuzW5Ay1C8CXZ4SBPmj/wL2/c8lAY+kEI7qVpWM5kyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sd6uJJCv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sd6uJJCv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89BFC19421
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 02:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773453893;
	bh=rDJHTiZvQHcsbu9Nzkby/VDlDlpifbBfSyQOJrovRL4=;
	h=To:Subject:From:Date:From;
	b=sd6uJJCvp6Vmr0ky5gzH8arDUezKQZIollcJ45apqtOhzvn9zU8ZO6/tAsDXWUto3
	 XU3xA2IdV0eOa71uEiPDzib5dCgjTAr/FCRDMb4nOF2wfd+aCoYo6X5HtTWjUQt5qo
	 CUNopezoIyDCBQm1wUKv8LI+KVENYUYKW7iSDrFnk8FkyfMj+xrJ5/nuOnjBEeLLLV
	 NF0K5EMdG+CWJKhXb/9a7fxGmMYRdfOgypAiFRNI3Nr2bRL26Iq52vIJ2QWbWxTwmB
	 xP6XxF98qTHVMBE3Zk4ztTZDhfwVJiplJXy356oye71Z3jYt0RF+9+UwOAhzvpH8hx
	 9GeAN2wMMtnxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95253107BCEE
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 02:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177345389360.20310.17985528548615103818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36e54b89c1ae9497e677021fa8abc6a30d2ba73f80cb6bdf5d06f148f753bd2c
Date: Sat, 14 Mar 2026 02:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773453893
