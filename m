Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A1CC35F18D
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 19:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776454054; cv=none; b=DHeibf4PKSsQlOX/lTmKvOd8MoFIASPREvJTV9PEKuVCZC5kSAiINbzC5A3l8bOAFVtixHnzNnkG4DHxI7jMAfGJAtIWRNr98bhTl7/09ocUu9SwadtwdPkLbKvQMAXI/eqpUAlfYEGQIk09PM7uA9mtKZGwmnrnJIIZ/5RQ4Rg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776454054; c=relaxed/simple;
	bh=udxWjKrSI7b0WI/oyjnUiS2bkMlpqeTaA1fPXB7Hnzc=;
	h=To:Subject:From:Message-Id:Date; b=F1Gejf+GHy5yGfnNyxhUrJfsu9ifsg859y9e41k+Ll6ZNHHcpCdBhmAEGHuwyPfrDJFZXAWvre0XCqlEAJ882eh/S93+rnMaXmdFVdPc/2PFmdGtfigwIeCPjclDe2QZjDTM9Vd65jHCUWUWNAxntc+QN9axlnQMnZh5ViTJw0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cCqwXbcB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cCqwXbcB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEF8FC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 19:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776454053;
	bh=udxWjKrSI7b0WI/oyjnUiS2bkMlpqeTaA1fPXB7Hnzc=;
	h=To:Subject:From:Date:From;
	b=cCqwXbcBhAsgW8++IeecmIYGMISKDiFCxrnUZPgiA2cX56rV2eQXHn9jzxKltDJNu
	 QZFWJwD7iWmYYn6UtVlE3J2Gz6wzEyeY+Ntt4DnwowXf7ewNaBrdLJ/sEAHRUmtrQo
	 ErwU0OoP0xEhbN0LOg1kPlegjqX5ahUXs97XmXWMEH1I64x33PEz6VcJ+uDeJ6CzLI
	 90v+nQMH81RP1GAo5x/C9zFkBEnd8JvXq1WmscJOoXh95wAsQrbVwlV/3Nuv18/IxG
	 96Q2mgzMQDajzwbSmCyAb/xPr1zvDLq8odlX/5ugFBXbvjegiySCy8J0JOnPeQAZif
	 VtKAGvTDqn1KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA14F8D75C
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 19:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177645405368.16248.16928635382495500324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a385a89ab593c322925aed4e6545097bfeca742234aba12f21a405d5db0bd0c3
Date: Fri, 17 Apr 2026 19:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776454053
