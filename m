Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0534884A53
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 20:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707509297; cv=none; b=M3/dmXCvh+I77cVLW4DwqmXAJk4pQV8LwITCBkNsj/GrsnJ2Aew1MKIp5o3U4J7i2xEmx0P5ScWOpz3zukhD/QlRE+gyRmtIQejDEg7zIgITx5g9ZlMyAwEf/G15fij0CIApwgnoCCHNFjJ1Sl7igppkXpXSUeTug7KbtzvN7+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707509297; c=relaxed/simple;
	bh=miHw7vA63Rckfpjhx26YsslgjtKZshQP1UAsbVcthwk=;
	h=To:Subject:From:Message-Id:Date; b=UwQcWqJzu7voA1fYHQfxtdjsF6QW6huQZAfVLkKlGYqzK/ArkbFVKfI3K75OZiC/G0V0ZZNP1NUNK4yoAoVWVHJkhM9+E6xRtBbqM2zuAP2ya+EtPc+OHGsswnSFm269sUXli/gFRH/zMKe13jyVAH7M+ihUlimlv95VlS9RLpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qEoRDV0s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qEoRDV0s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76A83C433C7
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 20:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707509296;
	bh=miHw7vA63Rckfpjhx26YsslgjtKZshQP1UAsbVcthwk=;
	h=To:Subject:From:Date:From;
	b=qEoRDV0scz7XUdeBA51dKtZKESKZUT6SaPt60tbaJ7t2wHFeTJ8IDoNDLtxfoZNMm
	 K0Eln9ETSoHXAPA/cXtaZArr/wzn6rpt9ao3/HAGqLTNpQtDmu8us3lRhFR+7XuSEa
	 c99cg9aWbbaWU4b0eTs3v5FRfFQLvRoZGW7HGdjgnkkhHfLq085UKEvP5SEwCEXuuL
	 iGV84klcMoTmYJEzCFK8zyp7vMsxKLOWDT6UKLSXjFFWa4xGDh7Mqq69XTYKq9VT9o
	 sZVRtmky4QBcwtBQa/SjX4FuHq7TR80WByOS0CFeucgfXiz80cFV10Jn0SxPg2uK9O
	 IwLlHWxjbUydA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E708C4828F
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 20:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170750929636.1605.9444994855815842828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22668ce030fb378247ed1caf5e9af6c381c3716e59a0c6e226d5a06e9c79c601
Date: Fri, 09 Feb 2024 20:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707509296
