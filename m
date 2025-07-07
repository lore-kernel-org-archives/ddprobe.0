Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45D0828CF7C
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751879994; cv=none; b=DtrdTYqRpw6DcS0LmwxXc7PKKA947H7QLvxvthMBVJ8NHEhWklmzcxUg0+CbtQ1qnmZm0nxbWm7PrBg0999x2pfffrmZCEVeCbwaknPKwFhmqZF9Lqf/OpE7uN+QOT0jXX6JtfM0k35DOELD7NCMdrcec1bbLtggxGopTg4r4HA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751879994; c=relaxed/simple;
	bh=C1gNTzndBvihdtwcjAKDC/jpM6jf4z5WvM53YN57eXY=;
	h=To:Subject:From:Message-Id:Date; b=sGgwekqzwi1Cj4zmns5ouLz9nrk2ilAX20O5imID2CbHjFYmbhBdS71WoazOzQYQHI68QAuOooKmpfxEaIMcdlq2xuW0NmNPeVU+9IWp7w3PbRlkI3p2/NP5OvkzQyS+b1TzhBXduF/4RaWWHJKq0mx2SM8pqNUWz4cTix0F0A0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s4f/+u1m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s4f/+u1m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2889C4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751879993;
	bh=C1gNTzndBvihdtwcjAKDC/jpM6jf4z5WvM53YN57eXY=;
	h=To:Subject:From:Date:From;
	b=s4f/+u1mdsb9tvfr1zqfLHah9cReHzhAFSZCGtPm8SrYE6r2NBXAIojWZR70z67W/
	 ODTAEicAT41QKbF+b771nkjpLMwkTo1sbvnrgVbWbpVu3c9w9Qmy8r8nPl8CUeQJKl
	 eZNkIN6fKmfSE/N7SlZaqUckFgY8uRsms55s0Scf8vFYJDGvyJGN1wdTPfP5Vn0HNo
	 tvA7lWJw7lA4qjVZKEuhUk1fJ4llyh4HX5WQ8hPqoqBs2rwc3S0TyYxDbWXejkcFwC
	 atnAfu81iWbLpl+S4DTffDoNJVsoiAUnG45lLDLUUMAZaDl3EMxB/5Dl9dtxk9Uh27
	 vmpy05iVfI00A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE66C83F07
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175187999357.29987.15189564796395605508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39656d416eb169a7ff77294c0b9c4c05c459afb63ecc841b48dcdf0056d92ff1
Date: Mon, 07 Jul 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751879993
