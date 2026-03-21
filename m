Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE80C28C035
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 14:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774103694; cv=none; b=UAMtn2YziSSGEMGt49O1xVu/qHdY+gWl11NiSUHJ4v9A4C8mr1nGfQYgCSbMwY9eJ/FR4uCeqYv3B4upOZXQKv1OCA8BzCbMp5vV1y626p+c5GN9gJmU7leABJQAtDYUdwXXF9kQCJMUi/6Ijc4NYS2oJKuZnTbHIluTT0AdHG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774103694; c=relaxed/simple;
	bh=DeXaQNadzgFFs7gukeoNYmdzu7wGVyC+ze+8ft8GDVE=;
	h=To:Subject:From:Message-Id:Date; b=CQ3uYQtMCLtM40qLGBklss3y3jVn6WmUKFhTGRFJSWeMN40TU4/wUEFtCmbaqu+amXA0e8R3oWE9F2rlI+2mpRzssypFpSPN/p3T6+oCweRINsQ/cDLENj8Hftdxtm+A3pJZLVT34FquIXVhw29/XexcuMLWlg/3oq/7KyvEKn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HRT+1KRm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HRT+1KRm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD99C2BC9E
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 14:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774103693;
	bh=DeXaQNadzgFFs7gukeoNYmdzu7wGVyC+ze+8ft8GDVE=;
	h=To:Subject:From:Date:From;
	b=HRT+1KRmZtdsuiBLWbEK4noPx9jn5DP9VHTQobxWyyDV7QRPmCPeJRvBQ9+fG4IB2
	 6OI4AG9HE1JEWfd/4AE0R1ZbsZ165qQ1/OBW9wadTwsBsrq22yjhEmqFOZ6bx1CMf8
	 Uebe5s9xaxklQYGfVf4C6cSO1uSPuoMOLeGS610G4p3CxcKM2i0RLF5kADXVy/1vRX
	 e8SwSrW3igjlXoiEuGIu9Is+DIdbeBlbXR/Uvm0YfSA7iVEhVzU3fkKHx++Mi+OkEN
	 MKLqwLRXEGTY4TdSEG9lN87+/DB4pJjK0LO0C40a/E6H2mHknLEQiQTBpxFHuM8lpC
	 xd7EqrsGptckw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA4A1094464
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 14:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177410369357.21779.16779094000167630524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a6fd7909905acbe368c6dd79fa1d3b18954c7f426acf84ecd9d92e020e2ba9a
Date: Sat, 21 Mar 2026 14:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774103693
