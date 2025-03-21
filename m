Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 422B21C2DB2
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742561994; cv=none; b=MwiYpSUwMZayC2cM7q4eY9HqAQxHye2YM5uBHVHa9AjZlHqYHRL3yI8dGHQtXrQGSXTRVkZ6KyUHjRLg5BLbikZw+0QabZq7TJQ/S5ow+r2IGGrzvFpFBzZmGftPwCbxT7q4f1lql0ux3sKXvI2DcYVEueb2fcld2iCIuFQ5sh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742561994; c=relaxed/simple;
	bh=uaflG56y+XzBb3aNymUbvR20D3Nu4T+GxzTE5BM+Ry0=;
	h=To:Subject:From:Message-Id:Date; b=gcINP3III7lUxpSkZVhOuEVObRYtjW6BX6RML1S5y8TbdLKU8AdW1o5PGQ5fJFAJnWx1GEhHmuULCxZWfKDHS+re9dtMHXqCWyFRZf61S2KKPjjCWOZYCDD9Jfos0DuTlfSbFcRMVkw/e52m+KIhc5fLmYUSHP2r0uCFE5uI4kg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b0rgcCaz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b0rgcCaz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB879C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742561993;
	bh=uaflG56y+XzBb3aNymUbvR20D3Nu4T+GxzTE5BM+Ry0=;
	h=To:Subject:From:Date:From;
	b=b0rgcCazBPwnC7ikAwmW4jkY1JXlvp2LYKCXzMyQaP9glU3k9/cmcEdRm5XfrucOV
	 fWmBirQLRQbJPyBApFMIwR8qR5z9qurOa7cv4TNCDBCg7MKmsKPU+4cquye4nz0RZv
	 CH7f6zZXqwZTTYk22Ckmgq4I5fMMGw62TltTD4rhrq3BiryrgDlGIDfoTEjrT5Hj0w
	 Lp7+s0MWqCs0IRa8+z6M6kCRa153SKPkG4VJu5/gGt8uljSew5fioHhr/Q8S8K7gQv
	 /ZYN/O+sAj8CkwpK4opvEMFrmeMQRRIoBJ248iVbDocVJ1LbUaf8aAM8W4iMizSCGv
	 BKMw0MviKCizw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CA4C36002
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174256199359.9720.2098356781893472987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a74e26e90bbad613b2bbe8e0a3702377b074a4e11b52f0a2184c1da3ca552d06
Date: Fri, 21 Mar 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742561993
