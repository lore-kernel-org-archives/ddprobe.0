Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0385E33C1A9
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 04:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772166294; cv=none; b=SQiIWRvWzvXXmx10XNakhxLedR2pB8wv5Dh8hNhCZwj/xHTwdJjUPEr8O9jVNKhygrYNZh78WBADYGHHv8k4BGCu5AucLF+0hjC6qmXwfr4zBllqHHu6PFLWEWRKMt9Ni53ZezNYGu7vRfGyANuBPilvj0M/hPNatUTNIWzqxpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772166294; c=relaxed/simple;
	bh=myB9MxjpwvYgt6ntg6UHybb+SQAG3zdw6kWrRB23JbA=;
	h=To:Subject:From:Message-Id:Date; b=cSo0RM1kGxnFjdEuKXwScyUDnEHVNhJeWq2QbZhpYbP3K57QGkRWWbJpOZB2yU3CBuKB/ALxfBYqULnLkNUJSgvYOkORs2ZuIl+0iBOQB2z5JJdPNPYLsaFsIfIXi1pKXGkxYaYyNdhK5TFo3XTwChl7RlwXGSa2iCvqpq38CHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bksGCG/8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bksGCG/8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4102C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 04:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772166293;
	bh=myB9MxjpwvYgt6ntg6UHybb+SQAG3zdw6kWrRB23JbA=;
	h=To:Subject:From:Date:From;
	b=bksGCG/8FeNjaNfwXc1odop/pFVCGDrYN9LYprfgW/1M30cv/VpfPqgzimoZyI02A
	 DouClG2LqYIlyQO9d3xxSv6U1dwiu0rVeck9TtOLu6DbgBvozeDqjwaInliqelTIsz
	 /Q1zO298EUE+3GidsVncbMLmLHvnZqSTKDgwAty6yfxmqob8A5rKAZ2cyZacOHKXCg
	 gBYgsO6Rgw3nm/m6j223hFN2F6NbwgLVjzFcXgbP1Zz49N4EZi3DzjoygAfmQ8ako2
	 bqzO2AkdBkgjfCBUYUSzhOn0ceQIY6lYeYNnmwJQYxXaV6hkumaw5wYFJR9RQeGCjG
	 iA+mZN7Ku0vQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CFD9FD9E3A
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 04:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177216629363.20255.13987324046204778502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e9753bb4f01e1cae9007afff50ddaeb0752ca1d8fe8f2439f0cf6d101aa7b77
Date: Fri, 27 Feb 2026 04:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772166293
