Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EB3B61FDA
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 03:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717556783; cv=none; b=XQdSA3Tx4P1MnFCYJSsvHYAXoPwjFlmYIADOdp32LZargsZuABYnPZmam/+WPcyDx+Y4AIv1EIXL+MqtcY03lmyG2LVw6cR5Ym6uWbjLlY8l6NjqkzjS8Dnv5ooYY96FsM3UYo0a6VxtPv0RiE1PJQw5iSaUD6s4R7GCtilVDW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717556783; c=relaxed/simple;
	bh=wI2nAI0qKYvOR4xRzq3INp+1SeTrRl+cCTDW0s/rHdw=;
	h=To:Subject:From:Message-Id:Date; b=P1V1i8yah4HCCnZFRBHkttZT/vU0aMIiKx4a+NafYCncrnGk2StzOhf3Tv4o0uR1p+Dptcpf2YVgnMgjjBomlEYxebEZAX7eTKRBIuN2AABScIdq9eZwjK+2pSelGnu/IjIIu+uHKKT7P+ALw+OvbASVYSLIcv0F4tMRrDJgWO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CDbM8gTY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CDbM8gTY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D44CBC2BBFC
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 03:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717556782;
	bh=wI2nAI0qKYvOR4xRzq3INp+1SeTrRl+cCTDW0s/rHdw=;
	h=To:Subject:From:Date:From;
	b=CDbM8gTYqaHxPT9N7v7/pxZ8t492PGliy08oqJE09bC9HUQN7pe5A4SZNbrkZy6Ab
	 /irUvwK83iq4SdEcF9a15QGR6kJlqrIILsK/5WOL1cDUX6w36e0zXtLxkUGibZhHHx
	 UqGSsfc/NZV4v+eJ6rJBw/Q2VSSCXahJQb4Y0OL8RCzeCZ3JFUKjflW25pEnAlbU3H
	 FqWv27JQ/TT2qfEG0yuUfvQJG/1m5vwpziobH3FQSN7YuhTXARszysQdy8sE+wVbrY
	 MwxDHC9s1lOGAwLoZJcSqE1afgTCsic7wTvEEblUytYRRmbDNQz/Snf8aamt7fCK1c
	 0vEvqIDRr8UyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB81AC27C54
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 03:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171755678275.18969.7495314456854695656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 311d89c686d597a3c3683e2dfef4560eac817a3c43c51c14653fabef17b93d6c
Date: Wed, 05 Jun 2024 03:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717556782
