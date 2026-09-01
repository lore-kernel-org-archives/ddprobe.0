Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36981442139
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788294034; cv=none; b=BI3jmqZfZoJ/xWBPI6x4af3Afq5y+Cfav2v2LOcX9DKwh/pqnrhnmvPg8dkJwsyxZXI5IKxxRLeLfusMjjT2lRL8hie/mtjFi3UiIf3fBawIXEwfg67+L+uhbQt4ZCUB56PlPq0mONnpI6oP7hyzn4pLEC++VrQYPEJMUypy2wA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788294034; c=relaxed/simple;
	bh=OmlxZWjJLwouwBstHekco/LKyxVN753id4nClDCQgzk=;
	h=To:Subject:From:Message-Id:Date; b=jONs6+TIOlK7XDY7lAYxxJphngJaiKUTmwrHDHY1gjWRj4BfvNw1ThucjVHDTecHxWGlJEPtFVYXQ0fMx2OxKJrUkhf7rBEVbn08x8KOAD7QjF6cKd55ZSdyAwLvKozpPtlu0IyVdBsTZ0r3kmF3iFymx+iL/BORVj2U6WfH4H0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D3Yt9fwE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D3Yt9fwE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3961C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788294033;
	bh=OmlxZWjJLwouwBstHekco/LKyxVN753id4nClDCQgzk=;
	h=To:Subject:From:Date:From;
	b=D3Yt9fwEjIGgU4d1VuM229xkYvzHTl598fQfN1jkPWlgcPOzHWiyjtKO6M50HoNvS
	 JIr6NSXi1OJB57dtBiUJnILidbxudNRQuA4m8MzVGV2H727J9bip5kcB8IREbRQas+
	 OTNqCLSlcuDePpO7YVMbR+S0u0BUlMshHuH3naDIXu7iYtLog3HxVIRcgytnpD/Taw
	 DFvBDkVsQC7RvYokx/fDlQTdU95cq1N/GwwGM8RPUbxUCM58oXCJPLrMW1MfHuP6hM
	 d7SL4huRzqWQtpA4FEd44U4/uZqXo0wF+JPNkANA8YWX13Jqy0eCG5h98Nl/kZsvpw
	 0zMCScz0uaUsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB7DC61DD3
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178829403368.29991.15113507347268502288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b1bb0cf961188b88b1689b2299ca59e934332e6fb436fbad59e07e16240d52a
Date: Tue, 01 Sep 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788294033
