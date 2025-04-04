Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40FFC101F2
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743746994; cv=none; b=tzJO+OqfzgmiNaKIu1WGBRJ9OT+wGz9h7Go7Rn/Uvsv+OXsEZuInh+4zJdClewx7D86U4XapO3KwlwQUJ43tH5WGEz396iy232WbR71j4Dk8RzqLAIyhEWzxMOOMs0Ls/9ZqobAXLnp3Am+xs0drZX5fXLJqkOwAB0ur1CLWKl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743746994; c=relaxed/simple;
	bh=dJFI6MUuNFs9z3L3flond9Qk24HVXzTwrb2vmcrEow4=;
	h=To:Subject:From:Message-Id:Date; b=GHXIn4Y5axgUAY8OmKlbv9TUeHaCDcF3tahiAFcJYl0nGQlZKDz7+sq3eIyvOT6CPNPRaGJJdkCBRiI9qZgUzIc9ky4d3caWKug/XaJBrWiL2uoPTrtnNRBLg71m4X1b9RWHUvKl3MNTe8AR+kBlf3C1qff+GjGzixswx5yXcbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qoEGNDFG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qoEGNDFG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70ECC4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743746993;
	bh=dJFI6MUuNFs9z3L3flond9Qk24HVXzTwrb2vmcrEow4=;
	h=To:Subject:From:Date:From;
	b=qoEGNDFG2WHiXw+1iybkbl6PBX1ffV1ph5Io0MrNi7T/pFhxqyUJgpACo6lz1GwU2
	 18tFMw7u02r1GQd0JXU2EvNqr5UvTT0YW3u5oJIcUnz4r99ESorJLeVYl07yZQPF2t
	 47JE7Xx6HATvIDfEvslhBiplnpp9wLXoKTGjLcG7rkuKYpz2FYRXLk4Izh5DcFk/NC
	 MLK1Cmvnf/FitTzcbGSMGAXI0T1Mlbj3tHB9szpi4OEeCAWshokwP/pxBKUpJtdPhw
	 WhQxzPxwFqmfN0xGJ/V0EQJD2JK4w7DNX1KJADWgblaW1pZMjne5MWar4gqDpfjZlD
	 WPKbW3oSxIXNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93192C36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174374699359.31047.4590200996376536954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8166c7cdffd0c40d18a0964f2af6f02ad7c2a902645e4bad7540f06214465643
Date: Fri, 04 Apr 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743746993
