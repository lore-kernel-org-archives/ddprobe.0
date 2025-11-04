Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 349E34400
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762230594; cv=none; b=LhbJ0M3yIE5rJf4klQ5oiEOLMQ6kjLpFK2017ti5XhPhLcL4EPiWp+Xl+IifPHxusQaeH2IwmaQqtllzctlesvXjTvKhAQw4CjWm+WU1gCxIjBLgOKpEE8gPa6EWDE7YRMaQL1ESWGrkwVaEid7CiIFVA0HcwGzqKX43zFGinys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762230594; c=relaxed/simple;
	bh=ScpuXBfuRmHzqGHjaleLfgLpJ7ozFfjt5edfJgwjzVg=;
	h=To:Subject:From:Message-Id:Date; b=KOSv4+PH3VY3HocgfTELKXOhCA3vxGrflNC8CoQZhlxcL92y1JU/1AyIP5j03M9cr8I5ELw7PM7AqyU8fh6Z5WY8V2QruWaUOQxyoFZwh8yMTgCxILbs4onWuJ5+DeHRlmF/+oYLqb3Pw8Qp601LNZzPozPZD1Zdz+vtIDoDHCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TDkAdeAB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TDkAdeAB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2E0BC4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762230593;
	bh=ScpuXBfuRmHzqGHjaleLfgLpJ7ozFfjt5edfJgwjzVg=;
	h=To:Subject:From:Date:From;
	b=TDkAdeABLJ/lSZmjKXemg7qAFDAkgA7Tv4DuCgNiQTmhx6u9WV6jUJTLyIgExUlqs
	 kZtEAfUlkURSCZNF7OTBnIFuX2+izSUolk1CxmcxTgVNM2MseBHZJeG9HLl4PKAKNE
	 kzM+/MlwZ7yfJCGrFNONTB5zIw8r0PnRSl8wWmYc/AV+jq0jOtT+FT9oGWvkT3mRdk
	 1oN+tSb66veQ8BUfZGm9tgMOGTyZ399orGY7ZtGWMyjWz/Cz8jGwYVTZJrT+rfjmZP
	 dLaRTd+IWL0vZYiO1OQ0GIOnDcDceABIkvg68r/3ppq2/KycJkMSRYGdv7pdW6+eqv
	 hUFXh364A7wlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A04DBCCFA00
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176223059362.32408.14441052943347720391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 542fa5d83594b9c1782f4ae445b9d930e704dbe1457776adc7e6094cd8418d93
Date: Tue, 04 Nov 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762230593
