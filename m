Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19BBD21105
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727684154; cv=none; b=cOl+vXLFnClbY9CFP7BADKx8AHETKz+IaipT92blUCxYQKkMHdQoQRXp/zQstlQua27sBcVX91cmlz+2wR+QX1iK5KjinkNS7ALugIe84B16BZsY1ThYGmshjyhw0cQZL/WO6VCs2uq2PlMgoozM7KXDTTxpA9cC2wHjrNMjo9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727684154; c=relaxed/simple;
	bh=ZLgKLW2MxTdTsSSa/wtEIlAl0a2yNDdjTlrtGCPvNiA=;
	h=To:Subject:From:Message-Id:Date; b=oTNHnuNXdavDfW1hS140J3GCLmlSR+rAifrueG85UNW/W+TPa+7ivuL85csjbkW9t8H8PDXtq1j8Gtx0ezFxFrrQ1OC6+MQcwCz8k9kBXX/U+5bdYmWk0gkwpsWxIeojDwT0gvMR6sYkYwS5xwcTKdhlaGdWWYeCAXgxVMTUhT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bGeEbMGk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bGeEbMGk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2595C4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727684153;
	bh=ZLgKLW2MxTdTsSSa/wtEIlAl0a2yNDdjTlrtGCPvNiA=;
	h=To:Subject:From:Date:From;
	b=bGeEbMGkPZq1rFWoQpZGBV58LKJE7Nr9fuwMI2aHavB7tO0VCIOpE8kO80pJFXsCl
	 W4/H0cgZ4RAI4QGd0EQQPaYOXs001A4es7cIEUCP4upQAX+oyZteTpMVz4rj0/xK60
	 MrJnyyLZbNNPJzu3TlHFJY2U2U8qZfuOpsb+2ZleqZO5jEevMAsMUuGzQwOZM5NfJn
	 z9KZIWhkNTYcd5lIn+FVDrPcW1D8U3YqN4sgkmneBkCoD7Oo2LYBOphjXjoVKXDTQ0
	 z7GyglLqv5j53/g3ESEGqoVS4TC9Admt0s2m+B6nMV8wf+IkrxCK5brA6Gl8g5uP2f
	 L2rVCSnMB0H3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9079DCF6497
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172768415358.4687.5482516155649745735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1aa9dfae17b35e8ba8abdfcb5cd8515efc8fc4766c1b84f5d586b4bd56402c29
Date: Mon, 30 Sep 2024 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727684153
