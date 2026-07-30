Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BAD63BBFD6
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785396634; cv=none; b=JKyTA/PYr9en8i0K/RY0ZzM/CXhBiP/QcTbim6VxduljL2aHSbOva3VPmv0buwDz3s0BvW2RLUk2A/Xieks0IS4L8AK65UEyzGAfy38+Fm6zt0TbnhEUvYXYOkQSpyH/v9sWbt3G00ltSbvOj+Bycb09xVplVbGsIO0R14AqoG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785396634; c=relaxed/simple;
	bh=29l+BjPsTVtormN+7Ojo4cYC8TK1siPAz1xLoMfuU4I=;
	h=To:Subject:From:Message-Id:Date; b=dOecVs+14aV81/BF77jL6GOKTjiODHY1pwEHXHMUr4bBmdbIbBTQQ0akV70oi3ZPVdCMMvuyK+WFdrSJ9kV7AEEV5gjbA7uitHoZ48QXfZV8Jt6LIjqESqBydykxAz2XF3A8vXqqP4WxAyyAWD4nfx+K1yIc+QyXY8JGZV+6ekk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qgyo1Mo0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qgyo1Mo0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D03D7C2BCFA
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785396633;
	bh=29l+BjPsTVtormN+7Ojo4cYC8TK1siPAz1xLoMfuU4I=;
	h=To:Subject:From:Date:From;
	b=Qgyo1Mo0IY4SGkMDVd2Ezszt3Se/D48Ehns0NYFANngl0YhR5EWytzt4IFutZ5FMj
	 Hw1JOId3VWL4pILuF802zGAD5GVjYbu4pL+wHXvj6TaOESDXo38aWC9S2jo01cMrp0
	 ccgw4ndSfJYAaBGJ3sTVlD63HPMG7m6my67TE6NRVm7XBN0CslSzrbkmp51YvNkrT1
	 sY4sp2beTk4VQABGDeXwpz0WHImtF/+4XELJkf68P3eVyJl1inJoEndWIVXOQsmmVY
	 vsgOoDbIAnr+oPbEgkxnvhztqGbqFUJgrVPCUr0RIMCLHIoe99dmdFq0y3dcyqlsn9
	 no+RcDH7IHoNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC91C531D0
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178539663368.27665.9796423941841392863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5120caee8d9262655bb9d3a4102c721e63c13577fb14763783f3b3bb5bb1c65c
Date: Thu, 30 Jul 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785396633
