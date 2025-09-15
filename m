Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30EBC275106
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757917194; cv=none; b=O7PojSVUzvtm6xNQVPpSkXujgf9gg3mrOYL8iJ14CFWVoBmsJZWdh6OQIwvpIE4AkC0f1gNMhrtvgCet/RZTOjpRqaj2I+SDIWwaNQjRRKuSpialRS6cXwdMUU+WyFdPkWh5QheoLom1289zaGlg/OuBkqkNBfqGAp4wHWd72i8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757917194; c=relaxed/simple;
	bh=gWuJmDtWwXo6IJ01WEwNaKxNl9KqJ1XNdHDKju6VPEg=;
	h=To:Subject:From:Message-Id:Date; b=QZ22D48hXYqS+KeUp+BolCoOX4Des+H+iTrmvyoC+/T1tWp2uuQk+hio68twxbN8T0QqwnlMlq2Ba5pSLWd9p6vgrMzBVxiVQ8oCgdNgE0JQFjjmS6xG3LBWDuCyPsNaf08J+9duNK/euNtxqqD2cm4CpYQM+zefjj+V0TU+ABg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lRIESmPu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lRIESmPu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F25EC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757917193;
	bh=gWuJmDtWwXo6IJ01WEwNaKxNl9KqJ1XNdHDKju6VPEg=;
	h=To:Subject:From:Date:From;
	b=lRIESmPugZjgef4wfNmcQW0w9CgoUZHhYSoiG7jFT59eGRkwZzwkzEZBqxxzluXfP
	 x8kC5b80KYBYJuQhU9OPTvaSMyG+TqXlIsvlmxu+U+CypWmrgvknZqBpqeH/jucZAI
	 uo4cFz/ExPVzJDEG/SMQuCCy/7t51uQC/cYVa9LRFIXd6352uuMbwZLN1QBLlYrHE9
	 b7RJyOAkcjyeMA/GCV11fBBN5ehvWn6wPUDp+JDtFv7Fru+v4ctw62BwlUWk7qkIdg
	 v+a2fNAG54/lBTbnzGsjb2bmf3dsUGUVjSFfd5+7gLbYcW3QzuwxiGNAsJVORArld3
	 cGgJf2b226Eqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4B4CA101F
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175791719357.11531.7060790029133354349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20bfb78a07ceb1765efc60fc3d6747d31741e20ae66d1c51a6e0061fa73cc9df
Date: Mon, 15 Sep 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757917193
