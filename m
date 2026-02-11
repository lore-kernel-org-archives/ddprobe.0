Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C28B321ADA7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 17:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770832493; cv=none; b=j7UKrsu+IV9nBIdIAKW+tSUbxlrOGMkq5UMKwhtaleOnqsd1v/HUBAf6HjUh7fx7AD8ia4PPqYEsl4j/lISjXgLTNzdFHLWrAo/W9FOpoQxg35JFBvXFMNDQMR+6HZg1uK/DAUYK0ul/f+yttFZZKcR1fE+VeJ8GQkblU7nO2uM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770832493; c=relaxed/simple;
	bh=LTWtDelfnf5iY8JTH6hihjrgi9JQ78vJNrqEPObMzIM=;
	h=To:Subject:From:Message-Id:Date; b=eEJddcmxJqxRolT5WQ6umcYNbyeui5QKOmotfieVNTjjuaic8D5cA4UtbIuigQgxJ8U2OD8fxz035IImL4QpCtQon2EmvyZ78b6OOyr7DgPNCK3zPRrrUdsOs9pyeLNEaGjVAmexbZ3x2d1b1PAN8OsENeYuKPwJEhDrFFrexNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BmGsWowF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BmGsWowF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3611C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 17:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770832493;
	bh=LTWtDelfnf5iY8JTH6hihjrgi9JQ78vJNrqEPObMzIM=;
	h=To:Subject:From:Date:From;
	b=BmGsWowFqjg0anWyQtuF3crcGmnJjaEHsWANvrIqkBRPyAGqZW0/+AjdkThACndN1
	 BL9hfwBpTN6rcnakpm5Z7mdtCX0fnR7MY9DFyCu/CfXBrVWZIkACMSIdborEJ1eMFA
	 rmAnjhSb2imi8Ur2I3LRDfkVFV5LLObq7Cr+qT5tgWmgcE5wGpzoiaKSCUM+IvRAnt
	 qUHMaw56OgyYODrEXOsWZUvlMlnu172FeMpzb5pCxegf20ur0/rwyTohHnfgVd9JQv
	 k/qj3iXAA77EKkvyHPk5XLHblP9r4XegANJB89iEBA6iob3CiRmCtAXo0w112b75kE
	 9Ycyif162Xkag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93954ECD6D2
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 17:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177083249359.31969.4509613986442077138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddc0ab18021913ff164b4c92ea28c71e577864de9f7163cf5a0c4ed35742dbcc
Date: Wed, 11 Feb 2026 17:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770832493
