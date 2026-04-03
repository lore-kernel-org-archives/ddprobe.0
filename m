Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231122877DA
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 18:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775239534; cv=none; b=RHDcdNGFBCtnXVw8VNfA3G3EKkdqlsbflTeQr4GHQvKYKmiQVNn67IA+0QephS9z4uag1Ob//klRKRhev+eCgCzTkNzbEEndwkVTgTULfNT8pvrKkvyx6VzZZNeierhPN4OV0yuTPJ2WpP6F43X5uFqADrSo5bI+SC2nAAJJSAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775239534; c=relaxed/simple;
	bh=18z9ixd3dtMyvrq9WaCZsyKSJPvMzJJRku11HvBac1c=;
	h=To:Subject:From:Message-Id:Date; b=NotqWglIGnev2SjE8trQh/FqgmZuOfuKr6JBp4ewVdwr/qWnnw2Bk8Q4YYJtlNXYiO+BUiiz90FApZcwbuEcH7G8J96g7KLVW4OyczcFIajHwfc0EYPO29FhDK+hTzsh0/RrexJlmev2/Rqj9/jd0RVlWnTNvtuFuV+63YjNx6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vP+LD+m0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vP+LD+m0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C640FC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 18:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775239533;
	bh=18z9ixd3dtMyvrq9WaCZsyKSJPvMzJJRku11HvBac1c=;
	h=To:Subject:From:Date:From;
	b=vP+LD+m01Y7GX4m+Ut6rVfW3Nz8yD4uggjgilgcp39pfQciNdYO0Mp60fG4hoc4WP
	 MsoIm/MdArH2pl5bgdgo8ieB4seH9rPw2LBAtgcWBorm4dgOc/dDC6MR7rZBYAKKXp
	 OPlRJILOVkJFmHSVI6GwuBAKigiZn5Kv9ODGDY5Wb0+3zURV159xvM45D3uNHFNCVE
	 3kxpzEXjPkg8VrOiu9S45d/vvAStYZ+9pwjF1+rHYzwTu90Qmhvy5/VvFp2GFEEoTk
	 JObM6BHNZbUUkTbaIHUo1p4+9jSPRhHDYk98j4Kz0V4irpPODu5wa58BWkhNC0+NZI
	 3E860IP0LSb6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2D55E8538C
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 18:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177523953371.27698.6416546599083906028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 332c61d7417103b1f4956b44c817283a3ee9fc6a81a6ea00ad9ae702720430c8
Date: Fri, 03 Apr 2026 18:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775239533
