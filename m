Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC68146A72
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759733394; cv=none; b=mvYlipv1jUDp6ldGUyok/Nakq2NWuwyi3msMocV/95kd7FJdZVZhp0i3qCf1cik9ZFW8m5GTa0Vg7KearzI0TU7HeBKqtoKU6heSezeFpju9AZzG0lnkRROFQTr3UgJyrKXiLsNO4fyePDrQfKkUHO1gXJaztSJhnyo4fWa4nWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759733394; c=relaxed/simple;
	bh=DHIVJNGXpwEhFiKeH+I1oSA2STevXKVk3wSOtRsCci4=;
	h=To:Subject:From:Message-Id:Date; b=XJtQXB6rbga0rMPXJAqwpqFRZzkBu6DpDJ/y50LHGe3Ju2oZt/JoPqiZRhHkVKkBumtdEDiMAwCtmmohrb9JALuCGziMlai6rTH7zFjicNLNX4KDMeU2i4e7GOPCeY32PbGRAn/bx+ji7hXtyStcDcVytTyG6+PrC6nVeVCaEgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UA6yAZt0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UA6yAZt0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CACC4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759733393;
	bh=DHIVJNGXpwEhFiKeH+I1oSA2STevXKVk3wSOtRsCci4=;
	h=To:Subject:From:Date:From;
	b=UA6yAZt0EnN3SoIderaD/vyKVs2CTTYlCIKSZLsQ5XLn98pUlpCNDH2685Jmg2bq9
	 1jXpkzck+45gLDlUJtck/0hFRUrZH7PHXfvKuUsxwahuVYpE3r5GWAh2ySZ100O3yq
	 cwFWrDYks2yzUvjY2sDUNOtDU3Ien+rs6OKoK5bhBBVoMNXs97727zfYJJ1BzDL2wM
	 EO9gMNnHbFfte6GxpZGJ909c9bcqhixFqO7fgEFSTTLSQQqzih1T1Nt4k7UhPsmH0Y
	 iK+0YxveMnc3Y4HQrM7sYfRvVTSOVl+K9I9QHml/MHdOhAwezVQY5+hOrl7Rery5NP
	 1nRuNsXGr05cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E92DCCA470
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175973339357.19886.16822613312957784142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbc170c6ed0686dedd004944e75ac3d7b49e87d9589e7eb7319dac4df4699c4d
Date: Mon, 06 Oct 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759733393
