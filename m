Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AD9627D77B
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756529994; cv=none; b=VXBEUxH/7xfKY00qlgSW823cNlkS0TTWak9+I4gwMbxvK9iIzjGoGVCxf3wAbSkY86LQZY89p2LSyeBq/K4sP22i8MsHSn8ULNK6Oanqu+h3gmhhlr8fqb1iAT6xwVphix22s2Omw/P73jHhqjfPLZuDzIwpYAos3Rz/qeIKiYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756529994; c=relaxed/simple;
	bh=pTqPGGXRAIz6bNy6vPXrt4unKkPpMwW1rYgGBOLAVbQ=;
	h=To:Subject:From:Message-Id:Date; b=JwMXIXq0uqJgE1GseoRthXI7VjsHrqC5TOdkbkljo1w8gE4RBPjd426uDYSIC1onOq7IY9YfydDBLDRtlbcuzfagYceG3oAZoSM2uJA/awOnAWysLFH8kDZPJAix8ZZ9hC45wJUgQpSKYufdNKDJlCvjfvNo0WVVes2A3B1aHBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=caGF1XJW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="caGF1XJW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A235DC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756529993;
	bh=pTqPGGXRAIz6bNy6vPXrt4unKkPpMwW1rYgGBOLAVbQ=;
	h=To:Subject:From:Date:From;
	b=caGF1XJWXpqpu99vNUI0pH5amBH6zhP9V/DPqPi0h+Y4PndFMNfPHvnCm57iO0p+J
	 EmkL/LvQJG+M3d37oFXMsqr57cICrgkrY/b/IebtIpMi8cUKrfZZ4objr85hYw2kzD
	 DaxTjoOqpYmb9SsBh5P7rL59sLstjKY6uHGF0pw+xn+19xfZdhWj7zK3fPfVRMKeCs
	 mkEC89Dh4ugFVrXDjrWFsXnvUPM0js7cCN7EkuJ4Hz12fNIa8UmlVSRmXtKwNKujX2
	 THs8mEVM8hWnS1SM1p7JLEI6w6TQ5ie1Bmswy2Rz4rNGGIoXxGjMLm/DfyajYBiOdo
	 9sijB7tT50mMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9020FCA0EFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175652999358.2834.7899832743591941443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11d681fb14c069e64730725196d078e9a905c65903480f9bfd8c3d150215eed4
Date: Sat, 30 Aug 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756529993
