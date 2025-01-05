Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F40529B0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736081754; cv=none; b=F8SUZ5ZhsouqWBCuxrIimUbgTca9wDbsbYSxeeKt9GHPtpYQ2EgWu9ZPlX6nqZtPPmJtbhW2qDqAtUcHA6JJdZe9XIKKeK7SjS538V8DT3XHDcUNBCBoUNQ/13ZK71RHJmA4KttdTRgHMSZrQYINi1ObwBa7HmyaRsFt2rfkjh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736081754; c=relaxed/simple;
	bh=CrQu+iUyxXbnvEYu29lF6WNO74z1H8FBtXRJGcO1n3o=;
	h=To:Subject:From:Message-Id:Date; b=Y6QcQwBGtSWv78qB/M7GkgcKDqFAl3PpB3d2qMq/9Pugjw+MBmLmn/RI+ano6eMoEGzESeF0iSb9vKiQryNK0Tk+AmeyixOpbZza5YtSbAXkWvAePOL5O+gcLA4atPMBbBwr7AeeLm5GTEStXG1HaTHXteLSNwnAcFkSQnY/O9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KSmTHWCr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KSmTHWCr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46DFC4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736081753;
	bh=CrQu+iUyxXbnvEYu29lF6WNO74z1H8FBtXRJGcO1n3o=;
	h=To:Subject:From:Date:From;
	b=KSmTHWCrhXlpnL9+N9smiCyzJ8URyn8IgFqynorb61NDLYf2ldvd3smXdxr7CpxcL
	 1XB4Qs5BGtOPyTJ213FcHOSHLvpNsqAoAjVju9K7uTEvPWW/dRYV2t028kYPyvHIfV
	 Jh6OyHrcpc6UstvlOKW/59jWOqFaGb21S+eWOU0HP08eCsyqYUVZgsrgonifECa2lV
	 D5a/iDfaKFV0M4wemSe4fnzwSNgmud2nqesATROujBrlU/kdWqesmXsqRQzEleXJHU
	 M8HXKcmd9Ql25rNeGzx7qhyGXgPRujHVSj1KDTj5P6VOKla+aDsDcBHydow8Ew4jI3
	 UUOQh+KMOZYYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932D8E77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173608175359.13192.6647767427262681297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff7f05472d2fcb2cdd3f988a70ddd13836da1d998e56c4092290f2b88a9c1759
Date: Sun, 05 Jan 2025 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736081753
