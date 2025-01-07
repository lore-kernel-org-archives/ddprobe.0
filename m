Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F37978F59
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736240754; cv=none; b=qEvIpmoOO773QoTpsSdmdXhdYinSmZdPK9/cwvDyh99tKK1LlQTXTPtHE3Z7iAQQUtHcu/G0W8he6XHag/4Y56SjyLc/jt8xWY4wiK5dh2IClkm7lZDwPuD6DdtYc4KxiUjIPzKUBxIHC2Ddp1RdU4diu9GAy5KTd0foQ8JkdOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736240754; c=relaxed/simple;
	bh=g45XGKoMp79a83FeglBbeax+PZWWT670USMMtmxIz3E=;
	h=To:Subject:From:Message-Id:Date; b=lJWl2TP1BDQ3gtTWBcY08p4hg24IFAVcKB2So0vFsKqQUZSXeOXbRVZRwR+bdmnBUbZWWfjyFaPw5n6vzLz+XzSeqkxAQkXF/Gxo3uDkSNUTLl2vcDyYAZ2DkWsXDEIDhjls8e0vAxxqf8DhTR5PZLuQvIXAku8VcwtX2Cj+XxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PpAjn3CB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PpAjn3CB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1704C4CED6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736240753;
	bh=g45XGKoMp79a83FeglBbeax+PZWWT670USMMtmxIz3E=;
	h=To:Subject:From:Date:From;
	b=PpAjn3CBvZjcAzmfOdK3iq8HcGPFjVZJH6wncsjccXC0fCVLYcdU3id6lbd72prFI
	 XUQgLCuALmdMVNVyncIndm+9Lx5P1W6hBXnY/p12nb0Lxf89VwSNxj83m7cK+Zkcv8
	 yuZLc1tXKZl7I/0jABI7mpLA0BktAqMxusDLd0r4h42Magide2VL4DUqFqf/2u0Qm0
	 3NcBNkxzh5JSZf+PBCEsARtMD9bzt14KJPwyQGNFy8TouQ5oAHiUJQ5d42uklwGEHr
	 OPdIRANoT859BhUrFwTeXF84OXYnIyR5pb3ovbWzRvZVorBilyD302N8gM5t3gG38g
	 eQva05SEMu55A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926F7E77198
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173624075358.19307.7129553735224387034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3960f7753f48ae3a7dc3c2606950115ace3afc56de6e39e0448cfd61b5a22b2
Date: Tue, 07 Jan 2025 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736240753
