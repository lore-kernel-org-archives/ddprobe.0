Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 211A0207A3A
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757039994; cv=none; b=pVgM+hnKET0IfKmmlerPzHAssbObd0mm+AQBI7V+1vrBFRLiYdqcnjkAOpZ0dGKUa3IH/M5rg9Es7Okm+psq85BwVOd0rWZ9ohy1a+NoapTbjVjfottQZQyLDzlCeYITRxP85hNxTbYbBW9/egNB+Jn0vxaQ3U0sPt5+XwTrlLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757039994; c=relaxed/simple;
	bh=/XcVkpZyxa5HJVxkCOfaN09BF2uCRIlX0meZG5KLO6o=;
	h=To:Subject:From:Message-Id:Date; b=SGh0SjuXAitxeveC10znHglh3/mrlILHfE70kPEDWz2tWE1DnRk2s1XyszS3CMaxWBApC2T9ybNyLk+/X5KJR+xf2XQ4JoP2sNn/KWRXbfMiFtO+6DN+sxvXjfmiHoSCnLdRqwwe7onHnUzDwzGq5D/1ZZAVnuY3M+u9S0Mj+ZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uTPRzDcG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uTPRzDcG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C0BDC4CEF0
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757039993;
	bh=/XcVkpZyxa5HJVxkCOfaN09BF2uCRIlX0meZG5KLO6o=;
	h=To:Subject:From:Date:From;
	b=uTPRzDcGA0zCH1xhjJX4OX9KCJZPQ2gcgEILqk2fAxBPkUKZJd5YOX/N80m++SSCJ
	 vNBjBb5OQ/u1zIQ/LnhKMYvw9xaN0m1J6krk7ny0TapW0UfRs4WANOEnaRsi7PGK5+
	 ZZoKO/P2wCJ9kOPll+pq4g3cWXmuMqJ8QlWWymm7DUF02C3xo0oM7jGtcPfQmQI8XV
	 8TbaHQddPujp/Ig6/KLhW++EvzYq4VWA36kyCgxDF3RGe7GvWqh48SQv8Bh4XXth4g
	 UQdxlxqqWv/84BhPDOoZnnbI+HVMnDja2fZPdpfc1GUQLx/1YIPAtvkBsgnM05woGz
	 ILRd5zUSstWaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F31BCA1002
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175703999357.17207.2510252719832759448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0176747749f2301ab036f09889adf6917839df056b96fbac7b9f5587b27568b0
Date: Fri, 05 Sep 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757039993
