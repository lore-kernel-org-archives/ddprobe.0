Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 260D82C11FA
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 19:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771269294; cv=none; b=IdquGQToKuyGbgKe06iT7/iUJD3Q3MdFq12cSdmBFRYgmzF87NoIE4xoPYmc0Q3+G31oek3pghYWXWnpe7pH2REdQzBLdsAYNcgoZ38NQRdFqDRvewjP4o+uZg+rSHBSDAj+HcnO2kGrrKPzjwlG7XkUd7BZwtXlWuEYu44+GpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771269294; c=relaxed/simple;
	bh=UL1plGG3pcLPSKDaEUJodnF/O5CdXk6mL2wTOl5JE1g=;
	h=To:Subject:From:Message-Id:Date; b=MfM+ETAa4EpQddKx37g9eVL5HWF6VXreFA4qXsX64Uelf9lvhrnDm0JFoDvPQM/VJFQKoWh7OuQJ0GkKkGTUrSp3zGulIoyKkc4LVFmKtoLeyroSVxgQ2zRBLrkvwRmUs6aImj9tHxUKqXFXkzsR/05hV/sPihlfYgZWSw03Ie4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uQyBsUs2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uQyBsUs2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E4BC19424
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 19:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771269293;
	bh=UL1plGG3pcLPSKDaEUJodnF/O5CdXk6mL2wTOl5JE1g=;
	h=To:Subject:From:Date:From;
	b=uQyBsUs2w3ZKKAQlj0pKl8+kb3lbJTtO58KelGdoffiuZXidyU2LsR8PFe5sFWJWW
	 i+z5axrC/H7csWApIymjau6SqOXNK/EfHKeRIV13kC+DL5klKdkRs2LXS0XXqUDcwf
	 XJ7A5PHbS4R7TQ5kSyOUjP+QjpObZ5dHlvm77D4IQrJUg8FvviUu4tGIJZnKnS/l2h
	 iK6ha3tsxZRb1+6A6sUfdnC8cnwSwZV0QnwZDrSQpAH4T5R9b4qil4RXq7kNtosmZl
	 fLHy4BEwy3t3OblBJJHiDsJ3fgaDcW/KBX1fwWDSwF547L6gQWjvlTNq76OyKp9SV5
	 /NB1F1/sCT60g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AADE83823
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 19:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177126929358.27301.16994488810279074315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0557df7ed5268876384e841b7ba2afbe6924c4ade42ed03d94af317111e5b3a
Date: Mon, 16 Feb 2026 19:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771269293
