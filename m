Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E630183088
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761952194; cv=none; b=tFuRebX2nYWOoxzzePwCt9bIDlqWrNL4qd09IxsjqV5iW3ljLi7nyGEW+1dxQVYrCEasBkSjpI9zVsC6JsU7mehZRLuoi4W7WBGN7lbNgoNu13PkyrWVeuPRcjpq7HZtxlsH5dNvQhR2Ed735huGmiB1AfQ6cFgp6fxU+EbVDBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761952194; c=relaxed/simple;
	bh=81zl0VqjeNl+s1vzzNjhKtPOHLIJm6OaPEXRTDrfTwc=;
	h=To:Subject:From:Message-Id:Date; b=fpwxS5zCoTDEdk83OtO46JEg4n+YaymdS0HGKT3Y9BBQBa886v65QWdxNe/jgGlOs4q0cEokYuS5qHZJogh5TYeHr60s7amQr4A6L+b/yaRYieVieC4yLZg5x+rhhZxfpr5a9amluJh1RLV+ohZcChURVvvygOn/dh77VnR0AzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=drKIYerk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="drKIYerk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DD5C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761952193;
	bh=81zl0VqjeNl+s1vzzNjhKtPOHLIJm6OaPEXRTDrfTwc=;
	h=To:Subject:From:Date:From;
	b=drKIYerkTNtOKeiGT7RlI289FWcO1BR1zcHMUdMkF2qZdvPC9oEEeoXTv+3eryjjH
	 DNs6ea5De99NVSQzk78TjhM1K5obF9Uav6B5mrAi68oeTbY3v4cNejrL1hE/HjrraY
	 M1u/+cb04ddt0M/ruMzIUTrXbW6rlDWLLceVPV+jKmrUMSXop4F30/LaWcuZ48LWq7
	 mvW+LlWO38dCbGpaMEuy6feH5AT4MFZaJkBygkWXOTrTFDewHPNC1lMLQXgW4ZFTfr
	 EheMuZTiITUNoqxY1YjDtciO7in0ahfGWWwTC9ewNEq+VZnLY9UjypQ0XJ2iTq/3/F
	 y8XpHlkbG5boA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A14CCF9F8
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176195219358.14281.10278695403454989496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f89864c192ba716704df87dc8395fb0beb985aadfd0c660982d4cef1ebd6a3d7
Date: Fri, 31 Oct 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761952193
