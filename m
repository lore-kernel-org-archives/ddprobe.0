Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54952381B9
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 12:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713010163; cv=none; b=DJFgyQPi67eXWpov25gS0aAqhvgCNu14Auy8xwy9xmS/FRKxnQU1XV8njNm/HMqfJWTeN1Ro0hnZWoKIo9RUtFDpTD6LYK+gSFaTr23qIRjro0YtLLPoPO07PFb6liojpmMcqX65nCPgWP4UWzAMqIJajBKLvROM7uKLATahtfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713010163; c=relaxed/simple;
	bh=Q4o4RNRfBbhEXVPSw871UfybxT4WRM/4jxdLP1z8gzE=;
	h=To:Subject:From:Message-Id:Date; b=SdZiRhZ94gOj6tpgotyybNSEXSl/cUmC6I46H3BL4qjFKsYE1YEmhxUcMQ7q7iM7Uz4aaVC1v72EyHTk77M4nWyEOQyy1QUewPEIB6sWx26hA3Ihw0DJGVuGt9wEHQ9PU6O29H4FizSV2Bc33AgvphU8RFGReLGHKmbbb4/261M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hJc6WwWh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hJc6WwWh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA6B7C113CD
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 12:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713010162;
	bh=Q4o4RNRfBbhEXVPSw871UfybxT4WRM/4jxdLP1z8gzE=;
	h=To:Subject:From:Date:From;
	b=hJc6WwWhXiuXppF0KwvPo96zNAzi6tv/5iZBQGizd4h5Y8oCiXkFZkJuSxD8kJ1/F
	 eKlzLjDlgKjrIhettqXkyD4dwgtqMGu/2h/tqDzhW2oK7SVxEZrbhIbsangS3qdZIx
	 euFBWypX92yalhwQn+RJoQw9HBDEhbA68lTiX93m0CDM5Es1zqN5VRsRiRh8iAWryt
	 /RlD/DEfpBbqNIF8pN/ilX5c6MolquzGa7MUitQ0vFmnGwp8ksjiAjWbQGARlOf46Q
	 9qnU5bqKorV3w54QMDkogZNY250V6FHCiVKzFlbaAHH+foyxBk7JOqcloRCPxjDpgs
	 ZarBYnG2nkOdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C33D5C4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 12:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171301016276.16604.15857934522527805644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d51950652ca44b1575a1a1d02ccb72613b1e236a8384eaed6bbaa1ba08eb2d1f
Date: Sat, 13 Apr 2024 12:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713010162
