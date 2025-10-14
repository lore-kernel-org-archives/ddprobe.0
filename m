Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4338B2AD2C
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760402994; cv=none; b=KE6NMsOyUyiIEzFdPw3R65KahbDv2L3ov9dScKUI5aOl+Mke51g7bRwO5zmMHYnfz3eHhzd/HcG5XrdE6zl/YdSZwLkNAGQb7xv1lAhd/N5ZqdPftle5OPxEPu0zB5c3OKd6b1iPjiPATHfcFuUc1QNKr9G/472rrrYx+eFm1zQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760402994; c=relaxed/simple;
	bh=EZQh49CqrTBjI573W1f2JZTnKYkh0yZK9OI9zT+VM0s=;
	h=To:Subject:From:Message-Id:Date; b=knlfKQGepfI5RW/A1+KVhl0RQnIH3Z1SEFqHelO01Ap6Wxg35qlO4CfcpCow90eeIzwL96NIs6VZ9jOB4Td/rtYRIq1V9kY2FJG/0I9zIGNb+iIm8YPv97pKh0D8tyLEZrji6X+0cT9EPmhY8LsRbVLltQkL+JTzf5IQz2Akf0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZaDfv2dl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZaDfv2dl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E48C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760402993;
	bh=EZQh49CqrTBjI573W1f2JZTnKYkh0yZK9OI9zT+VM0s=;
	h=To:Subject:From:Date:From;
	b=ZaDfv2dl1GtA0uQWfpFvb+O3QNWaSSIDtImyf8QgzoJh5r5Lt0sQo8gbMs+5S4sOH
	 Ik/uSVnJBrqTN7SvcaMViJzuAGsaZbD1clISZpDeQJ2Q02/lHyqVWWrea7jBN+EQzQ
	 qC9ztRWg1EMXgGSEuSIuqKh8MzQv4ZM2qYRD0FGvY93Rg6M55OE2fT5jDzi2/6YkFc
	 nbQMnc8ZHPfhiaJJMmHmMJDgx5jse2tk80s9G82FWhcwEHfzld8aiti79ECKFa9rfT
	 hL2kFLdWncaFaW3oo+6NeImVjHrUYJfcovESknW+HaiOWzLRK03i1gnYv5/J/nNr9A
	 4sqte6zp3EIWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95593CCD183
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176040299357.7740.11794533971974491040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e2d43fb8e27602bb050d5f4de6b4707f498304caf026d8f8422eeb8ac552a08
Date: Tue, 14 Oct 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760402993
