Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E1273446C5
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791529234; cv=none; b=hm90U1W8c+jfFEYXXfGYPeWdlDWGO5rZTfFcGdM0wAqahcH8mgJtqzHR9FpMQG2rVhWUpe+AKBjRmC1GCU2/Ue5JJ5K7LcnOT/+Lp0d/v7hkIW8zih6JeZPHCmZVxoAnHVV+3JdPXYkkqgso2uFrB9iaKO8ZGpplIjtSFzhpIaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791529234; c=relaxed/simple;
	bh=Mzx52Ljuv67+Decq5qmFZZXlg4MYYl48ObJUNdM9kDQ=;
	h=To:Subject:From:Message-Id:Date; b=PPQhxSQiJHd+f8MqX+vv0H56HlUtBIoQ8vyQ21hHz3l7bWyCNM9kSoM67fu4XwZGDi6Jw7W7lu9fDkRy1/wGLSDbkEOPAapK4+zICTI4E/A7SM6r4JmHqXln7fUFnBniF64zC4SiLhf/+lS16FXYxh+akj83luSbLXNJMuQjWCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mNPs1bHQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mNPs1bHQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8E75C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791529233;
	bh=Mzx52Ljuv67+Decq5qmFZZXlg4MYYl48ObJUNdM9kDQ=;
	h=To:Subject:From:Date:From;
	b=mNPs1bHQbv9NufnLUX3VBWiBkXqdcGCr8ncZu5xODX0sOzzRRxmpYGaPP21/iOiS8
	 AnAFhCOF2PT2FyDcJHvnVOnS3HPm1cAB2sizyrFj+h8a64RH67F5I4IuCU2Jf9Drcd
	 m9xCiRrq3YB0B30b88PuKrbXHtENxqm63PES6mDSm5g2oU/ePv3kMrlok2MvOOxXIb
	 m2DfqGy4oVnmI8UIrxMngT0XXEzxDOtt2G4VxXqKB577ACQmPE7OBrTxMy1XtN1e/s
	 S3cqzH7vh5KFQbC9pxP7+TmcLu0HJa38sy8r/iI94KI12S9At3Bf+AWt3SWdthqRmY
	 yXk3/vEkjH7fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B32A3CA6012
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179152923372.381.6317548186933648757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5461ab7116182ab34e76b91ff4d0c1921cc7ecca2e7f64b24f5fead0a88e34ae
Date: Fri, 09 Oct 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791529233
