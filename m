Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5DF4315A
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758206394; cv=none; b=deiwGNhcCX6whzDsmpnnNdSiJhZj8FbtYd95taTKvx5TgpLpqvJI7aJBq9ran+QmkbKLu20pq9gDe/yk342c/9BXl9w4ILyEhJ10CWJXP7QCp7CW8mYlak6xLah4hc+8HsLxTkO+ZY3XLoHYRqNfOm6EzPwURRjpQvMZCBjlQTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758206394; c=relaxed/simple;
	bh=vaW0LwOp/cSrpEKhk41OcPc2smOTeZBglNFyCyYMeYk=;
	h=To:Subject:From:Message-Id:Date; b=bWjaX5VEFfzLZv5l8ZSq6LFJPmORy2rhKlYowTq2gSFBCzoL165Rqi2FwP/mHghfzaFZtOgdpgCl6SGQUjCB7AgAUrw98ImvbXHn/4h9ZDd4u0GXlPrE1MPWNijNpXPKl/YchqtX8oiZwT3gduW8zqt2sJplTHbnCtxfxC/zAF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NnglEi59; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NnglEi59"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B90C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758206393;
	bh=vaW0LwOp/cSrpEKhk41OcPc2smOTeZBglNFyCyYMeYk=;
	h=To:Subject:From:Date:From;
	b=NnglEi59EuoPEmW8DsaJInR5pvHJlhOWVk+TV3k0K3I/krhSjkBmVrGgn89vez48+
	 1WkUPHLyCY/EYPVk4XSfpGaSkZ1S2uhGF6I3WAyVMJf881Pgr7GFbuSiCjvJOz11Kx
	 esNM24saOkTUxnidDQwXJdy3jcZEzh1hWLgJ9cZ2nDl+FHTAdMJ85E5aijsE7XqbPW
	 /SfGjNqC/3utbL9T05uRp3In0vnAdND/HE0yF5fIzJbmr6FUHsjpSnrt7CE+vyRs1K
	 hWJ8wI3a77BMCdMxMxiqXSo52gzYz9lTCAtWEHVkklbpzRSmQFBUvux5jiJgjYJzdY
	 aQUwCQe2/KwOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97587CA1013
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175820639361.20488.14223542595753237119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a88170c7d7ca1a553a3bba3b9e4dca5ce8b3589872a703553061f718033d5da
Date: Thu, 18 Sep 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758206393
