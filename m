Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B9F119BB7
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721888754; cv=none; b=aU7Uz4I1poWG9hh7Gvn+G8Sm+RsdYrLq6wcTeqXzSwRiqA3OtWaX0YAdmS0H3SSRsmEiUU8YwYmBjSfhmM2trnhTNUcX27Bzp4gwI5l5CChKG+jgei1ukC/X4Pj7J5+eaZJ7jInH84TPw4NGdpSABQKUcyyXXdHMymjur3uwM7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721888754; c=relaxed/simple;
	bh=D7X0r4Qgl6kZexwx6FSK5RSyB+pNO7vdonJSEigm9XM=;
	h=To:Subject:From:Message-Id:Date; b=jOijpmdzRYkxJ0+qa/XDCi/PIv0FAm+YRamq6LWoiEf4zpsO0mqEswySqgUjAs7+u7R95ivgS4mqmeDH8AyFbuGIC0qEPBnIGxZbgZHw/VQdmntiQq2vqYGsEF5JCzVfm7aESCYFmBfSLCOSe+xXj0+yJnJqzSrHjf8f/BSzqL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K7WfIupf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K7WfIupf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9009C116B1
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721888753;
	bh=D7X0r4Qgl6kZexwx6FSK5RSyB+pNO7vdonJSEigm9XM=;
	h=To:Subject:From:Date:From;
	b=K7WfIupfVenzwILBRAnJvl/RJiHHfNWbHy3NgivgFmdzYZko97VLUTkxppxA6BXR8
	 EbNOo85GOWk/uIoFCTiRahyihtYe95XKHQNT2Wqs7BTp1Ir/ESQ6WAphr6HRaatNVN
	 ecApWWldOzjDHb4F52khOCb+48EDlzkzA72CFwGmzOU57e7WEpbOIaEOPndVnPLqy7
	 O1OitI+SpZqdQo2qHhXCpjsRok6gQpNWPI3HCx1WbpuKQH3jiAVXnFGhU9Cj/0uECi
	 +uCoRAPtgOrsePA0riP8Qzna4xTCtlsDiWvep3v/eajqhYVMdalRY9RcXGHvHXzebD
	 S8MmScIguf++g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9174DC3DA49
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172188875358.22720.2570408194738990964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27cd5b849e8c8d28869392937e0f47819a161eefe71f2f85dcf7486721740171
Date: Thu, 25 Jul 2024 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721888753
